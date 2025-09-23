#!/bin/bash

echo "Reveal.js プレゼンテーション セットアップ開始..."

# 現在のディレクトリを取得
CURRENT_DIR=$(pwd)
PROJECT_DIR="${CURRENT_DIR}"

echo "プロジェクトディレクトリ: ${PROJECT_DIR}"

# Reveal.jsをクローン
echo "Reveal.jsをダウンロード中..."
if git clone https://github.com/hakimel/reveal.js.git temp-reveal; then
    echo "✓ Reveal.jsのダウンロード完了"
else
    echo "✗ Reveal.jsのダウンロードに失敗しました"
    exit 1
fi

# 必要なファイルをコピー
echo "必要なファイルをコピー中..."
cp -r temp-reveal/dist "${PROJECT_DIR}/"
cp -r temp-reveal/plugin "${PROJECT_DIR}/"

# 一時ファイルを削除
echo "一時ファイルを削除中..."
rm -rf temp-reveal

echo "✓ セットアップ完了！"
echo ""
echo "プレゼンテーションを開始するには:"
echo "1. ローカルサーバーを起動: python3 -m http.server 8000"
echo "2. ブラウザで http://localhost:8000 を開く"
echo ""
echo "または Node.js を使用する場合:"
echo "npx http-server -p 8000"
