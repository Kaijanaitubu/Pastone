# layer_blur プラグイン

レイヤーに時間経過でブラー（ぼかし）効果をかけるプラグインです。

## インストール

```tyrano
[call storage="plugin/layer_blur/init.ks"]
[plugin name="layer_blur"]
```

---

## layer_blur タグ

指定したレイヤーに時間経過でブラーをかけます。

### パラメータ

| パラメータ | 必須 | デフォルト値 | 説明 |
|-----------|------|-------------|------|
| `layer` | | `"base"` | 対象レイヤー名（`"base"`, `"0"`, `"1"`, `"2"` など） |
| `page` | | `"fore"` | ページ指定（`"fore"` or `"back"`） |
| `blur` | | `"10"` | ブラー強度（ピクセル単位、0-50程度推奨） |
| `time` | | `"1000"` | アニメーション時間（ミリ秒） |
| `wait` | | `"true"` | アニメーション完了を待つか（`"true"` or `"false"`） |

### 使用例

```tyrano
; 背景に10pxのブラーをかける（1秒かけて）
[layer_blur layer="base" blur="10" time="1000"]

; 背景に強いブラーをかける
[layer_blur layer="base" blur="20" time="1500"]

; レイヤー0にブラーをかける
[layer_blur layer="0" blur="8" time="800"]

; 裏ページの背景にブラーをかける
[layer_blur layer="base" page="back" blur="15" time="1000"]

; 待機なしで実行
[layer_blur layer="base" blur="12" time="1000" wait="false"]
```

---

## layer_blur_clear タグ

レイヤーのブラーを時間経過で解除します。

### パラメータ

| パラメータ | 必須 | デフォルト値 | 説明 |
|-----------|------|-------------|------|
| `layer` | | `"base"` | 対象レイヤー名（`"base"`, `"0"`, `"1"`, `"2"` など） |
| `page` | | `"fore"` | ページ指定（`"fore"` or `"back"`） |
| `time` | | `"1000"` | アニメーション時間（ミリ秒） |
| `wait` | | `"true"` | アニメーション完了を待つか（`"true"` or `"false"`） |

### 使用例

```tyrano
; 背景のブラーを解除（1秒かけて）
[layer_blur_clear layer="base" time="1000"]

; レイヤー0のブラーを即座に解除
[layer_blur_clear layer="0" time="300"]

; 待機なしで解除
[layer_blur_clear layer="base" time="800" wait="false"]
```

---

## 使用シナリオ例

### 回想シーン演出

```tyrano
; 背景をぼかして回想に入る
[layer_blur layer="base" blur="15" time="1500"]
[wait time="500"]
; 回想シーンの内容...
[layer_blur_clear layer="base" time="1500"]
```

### キャラに注目させる演出

```tyrano
; 背景をぼかしてキャラを際立たせる
[layer_blur layer="base" blur="10" time="800"]
; 重要なセリフ...
[layer_blur_clear layer="base" time="800"]
```

### 意識が朦朧とする演出

```tyrano
; 徐々に強くぼかす
[layer_blur layer="base" blur="5" time="1000"]
[wait time="500"]
[layer_blur layer="base" blur="15" time="1500"]
[wait time="500]
[layer_blur layer="base" blur="30" time="2000"]
```

### 場面転換

```tyrano
; 現在の背景をぼかす
[layer_blur layer="base" page="fore" blur="20" time="800"]
; 新しい背景を裏ページに設定
[bg2 storage="new_scene.jpg"]
; 裏ページを表示（ぼかし解除済み）
[trans time="1000"]
[wt]
```

---

## 技術仕様

### アニメーション

- CSS `filter: blur()`を使用
- `requestAnimationFrame`で滑らかなアニメーション
- イージング: ease-out（徐々に減速）

### データ保存

- 各レイヤーの現在のブラー値は `$element.data("current-blur")` に保存
- 連続してブラーをかける場合、前回の値から遷移

### パフォーマンス

- ブラー処理はGPUアクセラレーションが効く場合が多い
- 極端に大きいブラー値（50px以上）はパフォーマンスに影響する可能性あり
- 複数レイヤーに同時適用する場合は `wait="false"` を活用

---

## 注意事項

- ブラー値は 0-50px 程度が推奨（50px以上は重くなる可能性）
- アニメーション中に同じレイヤーに再度タグを実行すると想定外の動作になる可能性あり
- 一部のブラウザでは `filter: blur()` のサポート状況が異なる場合あり
