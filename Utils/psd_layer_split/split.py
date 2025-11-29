#!/usr/bin/env python3
# export_layers_minwrap.py
import os, sys, argparse, re
from typing import Tuple, Optional
from psd_tools import PSDImage
from PIL import Image

def safe_name(s: str) -> str:
    s = re.sub(r"[\\/:\*\?\"<>\|\x00-\x1f]", "_", s)
    s = s.strip()
    return s if s else "unnamed"

def bbox_xyxy(layer) -> Tuple[int, int, int, int]:
    b = layer.bbox
    if hasattr(b, "x1"):
        return int(b.x1), int(b.y1), int(b.x2), int(b.y2)
    if hasattr(layer, "left") and hasattr(layer, "top") and hasattr(layer, "right") and hasattr(layer, "bottom"):
        return int(layer.left), int(layer.top), int(layer.right), int(layer.bottom)
    # tuple (x1,y1,x2,y2)
    return int(b[0]), int(b[1]), int(b[2]), int(b[3])

def iter_layers(node, parent_visible: bool, include_hidden: bool):
    for layer in node:
        visible = parent_visible and layer.is_visible()
        if layer.is_group():
            # グループ自体が非表示なら配下もスキップ（include_hiddenがFalseの場合）
            if not include_hidden and not visible:
                continue
            yield from iter_layers(layer, visible, include_hidden)
        else:
            # 個別レイヤーの可視判定
            if not include_hidden and not visible:
                continue
            yield layer, visible

def compute_global_bbox(psd, include_hidden: bool) -> Optional[Tuple[int,int,int,int]]:
    has_any = False
    x1 = y1 = 10**9
    x2 = y2 = -10**9
    for layer, _vis in iter_layers(psd, True, include_hidden):
        # 空レイヤー・調整レイヤーは composite() が None のことがある
        img = layer.composite()
        if img is None:
            continue
        lx1, ly1, lx2, ly2 = bbox_xyxy(layer)
        # 幅/高さゼロのものは無視
        if lx2 <= lx1 or ly2 <= ly1:
            continue
        has_any = True
        if lx1 < x1: x1 = lx1
        if ly1 < y1: y1 = ly1
        if lx2 > x2: x2 = lx2
        if ly2 > y2: y2 = ly2
    return (x1, y1, x2, y2) if has_any else None

def export_layers(psd, outdir: str, include_hidden: bool):
    gb = compute_global_bbox(psd, include_hidden)
    if gb is None:
        print("⚠️ 出力対象のレイヤーがありません（全部非表示or空）。")
        return
    gx1, gy1, gx2, gy2 = gb
    wrap_w, wrap_h = max(1, gx2 - gx1), max(1, gy2 - gy1)
    print(f"📐 ラップ範囲: ({gx1},{gy1})-({gx2},{gy2})  ->  size={wrap_w}x{wrap_h}")

    def recurse(node, base_dir: str, parent_visible: bool, prefix: str=""):
        for layer in node:
            visible = parent_visible and layer.is_visible()
            if layer.is_group():
                if not include_hidden and not visible:
                    continue
                gname = safe_name(layer.name)
                subdir = os.path.join(base_dir, gname)
                os.makedirs(subdir, exist_ok=True)
                recurse(layer, subdir, visible, prefix + gname + "_")
            else:
                if not include_hidden and not visible:
                    continue
                img = layer.composite()
                if img is None:
                    continue
                img = img.convert("RGBA")
                lx1, ly1, lx2, ly2 = bbox_xyxy(layer)
                if lx2 <= lx1 or ly2 <= ly1:
                    continue

                # ラップ左上を原点(0,0)にオフセット
                ox, oy = lx1 - gx1, ly1 - gy1
                full = Image.new("RGBA", (wrap_w, wrap_h), (0,0,0,0))
                # マスク指定でアルファ保持
                full.paste(img, (ox, oy), img)

                name = safe_name(layer.name)
                out_path = os.path.join(base_dir, f"{prefix}{name}.png")
                full.save(out_path, "PNG")
                print("saved:", out_path)

    recurse(psd, outdir, True)

def main():
    ap = argparse.ArgumentParser(description="Export PSD layers as RGBA PNGs trimmed to the minimal rectangle that wraps all exported layers (positions preserved).")
    ap.add_argument("psd", help="入力PSDファイル")
    ap.add_argument("-o", "--outdir", help="出力フォルダ（省略時: <PSD名>_layers_wrapped）")
    ap.add_argument("--include-hidden", action="store_true", help="非表示レイヤーも含める（既定は無視）")
    args = ap.parse_args()

    if not os.path.exists(args.psd):
        print("❌ ファイルが見つからないよ:", args.psd)
        sys.exit(1)

    outdir = args.outdir or (os.path.splitext(args.psd)[0] + "_layers_wrapped")
    os.makedirs(outdir, exist_ok=True)

    psd = PSDImage.open(args.psd)
    export_layers(psd, outdir, include_hidden=args.include_hidden)
    print("✅ 完了！")

if __name__ == "__main__":
    main()
