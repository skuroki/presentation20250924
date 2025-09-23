# Markdownでスライドを作成する方法

Reveal.jsではMarkdownを使ってスライドを簡単に作成できます。

## 🎯 作成したファイル

1. **`slides.md`** - Markdownでスライド内容を記述
2. **`markdown.html`** - 外部Markdownファイルを読み込むHTML（推奨）
3. **`inline-markdown.html`** - HTML内にMarkdownを直接埋め込む方式

## 📝 Markdownスライドの記法

### 基本的なスライド区切り

```markdown
# スライド1のタイトル

スライド1の内容

---

# スライド2のタイトル

スライド2の内容
```

### 縦方向のスライド（サブスライド）

```markdown
# メインスライド

メインの内容

--v--

## サブスライド1

サブの内容1

--v--

## サブスライド2

サブの内容2
```

### スピーカーノート

```markdown
# スライドタイトル

スライドの内容

Note: これはスピーカーノートです。Sキーで表示されます。
```

### フラグメント（段階的表示）

```markdown
# リストの段階的表示

- 最初に表示 <!-- .element: class="fragment" -->
- 次に表示 <!-- .element: class="fragment" -->
- 最後に表示 <!-- .element: class="fragment" -->
```

### コードブロック

````markdown
# コード例

```javascript
function hello() {
    console.log("Hello, World!");
}
```
````

### 画像の挿入

```markdown
# 画像のスライド

![画像の説明](images/your-image.png)
```

### テーブル

```markdown
# テーブル例

| 項目1 | 項目2 | 項目3 |
|-------|-------|-------|
| データ1 | データ2 | データ3 |
| データ4 | データ5 | データ6 |
```

## 🚀 使用方法

### 方法1: 外部Markdownファイル（推奨）

1. `slides.md`を編集してスライド内容を記述
2. `markdown.html`をブラウザで開く
3. ローカルサーバーが必要（CORS制限のため）

```bash
# ローカルサーバーを起動
python3 -m http.server 8000

# ブラウザで開く
open http://localhost:8000/markdown.html
```

### 方法2: インラインMarkdown

1. `inline-markdown.html`を直接編集
2. ブラウザで直接開けます（ローカルサーバー不要）

## 💡 Tips

### 1. 改行の扱い

Markdownでは2つのスペース+改行で強制改行：

```markdown
1行目  
2行目
```

### 2. HTMLタグも使用可能

Markdown内でHTMLタグも使えます：

```markdown
# スライドタイトル

<div class="fragment">
段階的に表示される内容
</div>
```

### 3. カスタム属性

要素にクラスやIDを追加：

```markdown
# タイトル

内容 <!-- .element: class="highlight" id="special" -->
```

### 4. 背景設定

スライドごとに背景を設定：

```markdown
<!-- .slide: data-background-color="#ff0000" -->

# 赤い背景のスライド
```

## 🎨 スタイリング

カスタムスタイルは `css/custom.css` で設定できます：

```css
/* Markdownスライド専用のスタイル */
.reveal .slides section[data-markdown] {
    text-align: left;
}

.reveal .highlight {
    background-color: #ffff00;
    padding: 0.2em;
}
```

## ⚠️ 注意点

1. **外部Markdownファイルを使用する場合はローカルサーバーが必要**
   - `file://`プロトコルではCORSエラーが発生
   - `python3 -m http.server`や`npx http-server`を使用

2. **インデントに注意**
   - `<textarea data-template>`内ではインデントが保持される
   - 不要なインデントはスライドに表示される

3. **文字エンコーディング**
   - 日本語を使用する場合はUTF-8で保存
   - HTMLファイルで`charset="utf-8"`を指定

## 🏃‍♂️ クイックスタート

すぐに始めたい場合：

1. `slides.md`を編集してスライド内容を記述
2. ローカルサーバーを起動: `python3 -m http.server 8000`
3. `http://localhost:8000/markdown.html`をブラウザで開く

これで、Markdownでスライドを作成・編集できます！
