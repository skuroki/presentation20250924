# Reveal.js プレゼンテーション

このプロジェクトはReveal.jsを使用したプレゼンテーションです。

## セットアップ

### 1. Reveal.jsのダウンロード

以下のコマンドでReveal.jsをダウンロードしてください：

```bash
# GitHubからクローン
git clone https://github.com/hakimel/reveal.js.git temp-reveal
cp -r temp-reveal/dist .
cp -r temp-reveal/plugin .
rm -rf temp-reveal
```

または、CDN版を使用する場合は、`index.html`のリンクを以下に変更してください：

```html
<!-- CDN版の場合 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reveal.js@4.3.1/dist/reset.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reveal.js@4.3.1/dist/reveal.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reveal.js@4.3.1/dist/theme/black.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reveal.js@4.3.1/plugin/highlight/monokai.css">

<!-- スクリプトも同様に -->
<script src="https://cdn.jsdelivr.net/npm/reveal.js@4.3.1/dist/reveal.js"></script>
<script src="https://cdn.jsdelivr.net/npm/reveal.js@4.3.1/plugin/notes/notes.js"></script>
<script src="https://cdn.jsdelivr.net/npm/reveal.js@4.3.1/plugin/markdown/markdown.js"></script>
<script src="https://cdn.jsdelivr.net/npm/reveal.js@4.3.1/plugin/highlight/highlight.js"></script>
```

### 2. ローカルサーバーの起動

プレゼンテーションをブラウザで表示するには、ローカルサーバーを起動してください：

```bash
# Python 3を使用する場合
python3 -m http.server 8000

# Node.jsを使用する場合
npx http-server -p 8000
```

その後、ブラウザで `http://localhost:8000` にアクセスしてください。

## ファイル構成

```
.
├── index.html          # メインのHTMLファイル
├── css/
│   └── custom.css     # カスタムスタイル
├── images/            # 画像ファイル（必要に応じて作成）
├── dist/              # Reveal.jsのコアファイル
└── plugin/            # Reveal.jsのプラグイン
```

## 使用方法

### 基本操作

- **次のスライド**: 右矢印キー、スペースキー
- **前のスライド**: 左矢印キー、Shift+スペース
- **上下のスライド**: 上下矢印キー
- **スライド一覧**: ESCキー
- **スピーカーノート**: Sキー
- **フルスクリーン**: Fキー

### スライドの編集

`index.html`の`<div class="slides">`内でスライドを編集できます。

#### 基本的なスライド
```html
<section>
    <h2>スライドタイトル</h2>
    <p>スライドの内容</p>
</section>
```

#### 縦方向のスライド（サブスライド）
```html
<section>
    <section>
        <h2>メインスライド</h2>
    </section>
    <section>
        <h3>サブスライド1</h3>
    </section>
    <section>
        <h3>サブスライド2</h3>
    </section>
</section>
```

#### フラグメント（段階的表示）
```html
<ul>
    <li class="fragment">最初に表示</li>
    <li class="fragment">次に表示</li>
    <li class="fragment">最後に表示</li>
</ul>
```

### テーマのカスタマイズ

利用可能なテーマ：
- black（デフォルト）
- white
- league
- beige
- sky
- night
- serif
- simple
- solarized
- moon

テーマを変更するには、`index.html`の以下の行を編集してください：
```html
<link rel="stylesheet" href="dist/theme/[テーマ名].css">
```

### 画像の追加

1. `images/`フォルダに画像ファイルを配置
2. HTMLで以下のように参照：
```html
<section>
    <h2>画像のスライド</h2>
    <img src="images/your-image.png" alt="説明" width="500">
</section>
```

## 高度な機能

### Markdownを使用したスライド作成

```html
<section data-markdown>
    <textarea data-template>
        ## スライドタイトル
        - ポイント1
        - ポイント2
        - ポイント3
    </textarea>
</section>
```

### 外部Markdownファイルの読み込み

```html
<section data-markdown="slides.md"></section>
```

## トラブルシューティング

### よくある問題

1. **スライドが表示されない**: ローカルサーバーが起動していることを確認してください
2. **日本語フォントが正しく表示されない**: `css/custom.css`でフォント設定を確認してください
3. **画像が表示されない**: 画像パスが正しいか、ファイルが存在するか確認してください

## 参考リンク

- [Reveal.js 公式サイト](https://revealjs.com/)
- [Reveal.js GitHub](https://github.com/hakimel/reveal.js)
- [Reveal.js デモ](https://revealjs.com/demo/)
