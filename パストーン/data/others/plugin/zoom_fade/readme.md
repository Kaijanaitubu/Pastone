# zoom_fade プラグイン

キャラクターと背景の拡大縮小をクロスフェードで滑らかに行うプラグインです。

## インストール

```tyrano
[call storage="plugin/zoom_fade/init.ks"]
[plugin name="zoom_fade"]
```

---

## chara_zoom タグ

キャラクター立ち絵を指定した拡大率にクロスフェードで変更します。

### パラメータ

| パラメータ | 必須 | デフォルト値 | 説明 |
|-----------|------|-------------|------|
| `name` | ✓ | - | 対象キャラクター名（classの最初の部分） |
| `scale` | | `"1.0"` | 拡大率（1.0 = 等倍、1.5 = 1.5倍など） |
| `time` | | `"600"` | アニメーション時間（ミリ秒） |
| `origin_x` | | `"50%"` | 拡大の中心点X座標（%, px, left/center/right） |
| `origin_y` | | `"50%"` | 拡大の中心点Y座標（%, px, top/center/bottom） |
| `wait` | | `"true"` | アニメーション完了を待つか（`"true"` or `"false"`） |

### 使用例

```tyrano
; キャラを1.5倍に拡大（中央を中心に）
[chara_zoom name="mizuka" scale="1.5" time="1000"]

; キャラを等倍に戻す
[chara_zoom name="mizuka" scale="1.0" time="800"]

; 上部を中心に拡大（顔のアップ風）
[chara_zoom name="ayana" scale="1.6" origin_x="50%" origin_y="20%" time="1200"]

; 左下を中心に拡大
[chara_zoom name="kouki" scale="1.3" origin_x="0%" origin_y="100%" time="1000"]

; 待機なしで実行（背景と同時拡大する場合）
[chara_zoom name="mizuka" scale="1.4" time="1000" wait="false"]
```

### 動作仕様

- クロスフェード方式：現在の状態から目標の拡大率まで滑らかに遷移
- 元の画像を目標サイズに複製してフェードイン、元の画像をフェードアウト
- アニメーション完了後、元の画像に拡大率を適用して複製を削除
- 拡大率は `data-current-scale` として要素に記憶される

---

## bg_zoom タグ

背景レイヤーを指定した拡大率にクロスフェードで変更します。

### パラメータ

| パラメータ | 必須 | デフォルト値 | 説明 |
|-----------|------|-------------|------|
| `layer` | | `"0"` | 対象レイヤー番号 |
| `page` | | `"fore"` | ページ指定（`"fore"` or `"back"`） |
| `scale` | | `"1.0"` | 拡大率（1.0 = 等倍、1.5 = 1.5倍など） |
| `time` | | `"600"` | アニメーション時間（ミリ秒） |
| `origin_x` | | `"50%"` | 拡大の中心点X座標（%, px, left/center/right） |
| `origin_y` | | `"50%"` | 拡大の中心点Y座標（%, px, top/center/bottom） |
| `wait` | | `"true"` | アニメーション完了を待つか（`"true"` or `"false"`） |

### 使用例

```tyrano
; 背景を1.3倍に拡大
[bg_zoom layer="0" scale="1.3" time="1000"]

; 背景を等倍に戻す
[bg_zoom layer="0" scale="1.0" time="800"]

; 右上を中心に拡大
[bg_zoom layer="0" scale="1.2" origin_x="100%" origin_y="0%" time="1500"]

; レイヤー1の背景を拡大
[bg_zoom layer="1" scale="1.4" time="1000"]

; 待機なしで実行（キャラと同時拡大する場合）
[bg_zoom layer="0" scale="1.2" time="1000" wait="false"]
```

### 動作仕様

- `chara_zoom`と同じクロスフェード方式
- レイヤーシステムの背景画像（`.layer_object`）を対象
- `data-layer-name`属性でレイヤーを識別

---

## 複合使用例

### キャラと背景を同時に拡大

```tyrano
; 背景を1.2倍、キャラを1.6倍に同時拡大
[bg_zoom layer="0" scale="1.2" time="1000" wait="false"]
[chara_zoom name="ayana" scale="1.6" time="1000" wait="true"]
```

### ズームイン演出

```tyrano
; 背景を少し拡大、キャラを大きく拡大（顔アップ風）
[bg_zoom layer="0" scale="1.15" time="1200" wait="false"]
[chara_zoom name="mizuka" scale="1.8" origin_y="20%" time="1200" wait="true"]
```

### 段階的なズームアウト

```tyrano
; まず背景を縮小
[bg_zoom layer="0" scale="0.9" time="800" wait="true"]
; 次にキャラを縮小
[chara_zoom name="kouki" scale="0.85" time="600" wait="true"]
```

### 異なる中心点での拡大

```tyrano
; 左側のキャラを左端中心に拡大
[chara_zoom name="mizuka" scale="1.4" origin_x="0%" origin_y="50%" time="1000" wait="false"]
; 右側のキャラを右端中心に拡大
[chara_zoom name="ayana" scale="1.4" origin_x="100%" origin_y="50%" time="1000" wait="true"]
```

---

## 技術仕様

### 共通処理 (zoomElement関数)

両タグは内部で共通の`zoomElement()`関数を使用しています：

1. **現在のスケール取得**: CSS transformのmatrixから現在の拡大率を解析
2. **要素複製**: 対象要素を目標サイズで複製（opacity: 0）
3. **クロスフェード**: 元の要素をフェードアウト、複製をフェードイン
4. **更新**: アニメーション完了後、元の要素に拡大率を適用
5. **クリーンアップ**: 複製を削除

### transform-origin について

- 拡大の中心点を指定するCSS属性
- `"50% 50%"` = 中央、`"0% 0%"` = 左上、`"100% 100%"` = 右下
- キャラの顔をズームしたい場合は `origin_y="20%"` など上部を指定

### データ保存

- 各要素の現在の拡大率は `$element.data("current-scale")` に保存
- 連続して拡大縮小を行う場合、前回の拡大率から遷移

---

## 注意事項

- `wait="false"`を複数タグで使う場合、最後に`[wait time="..."]`で明示的に待機推奨
- 極端な拡大率（3.0以上など）は画質が荒くなる可能性あり
- アニメーション中に同じ要素に対して再度タグを実行すると想定外の動作になる可能性あり
