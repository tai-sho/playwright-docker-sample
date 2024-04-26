# 公式のPlaywrightイメージを使用
FROM mcr.microsoft.com/playwright:v1.43.0-jammy

# ベースイメージにはNode.jsも含まれているため、Playwrightのインストールが可能です
WORKDIR /app

# Playwrightとその依存ブラウザをインストール
RUN npm i -D @playwright/test
RUN npx playwright install

# テストを実行する際に必要なディレクトリを作成
RUN mkdir /app/tests

# Playwright設定ファイルがある場合は、その場所を指定します。
# 設定ファイルはマウントされるため、コピーする必要はありません

# デフォルトのコマンド設定
CMD ["npx", "playwright", "test", "/app/tests"]

