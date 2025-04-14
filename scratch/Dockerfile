FROM node:16.20.2-buster-slim

# scratch-vm用の設定
WORKDIR /src/scratch-vm
COPY ./scratch-vm/package.json ./scratch-vm/package-lock.json /src/scratch-vm/

# scratch-vmはここでは npm install をしなくてもよい場合もありますが、最小限の依存ライブラリだけはビルドしておく
RUN npm install

# scratch-gui用の設定
WORKDIR /src/scratch-gui
COPY ./scratch-gui/package.json ./scratch-gui/package-lock.json /src/scratch-gui/
COPY ./scratch-gui/scripts/prepublish.mjs /src/scratch-gui/scripts/prepublish.mjs
COPY ./scratch-gui/src/ /src/scratch-gui/src/

# ここでも最低限npm installを実施
RUN npm install

# エントリポイントスクリプトを追加
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

# コンテナ起動時にエントリポイントスクリプトを実行
ENTRYPOINT [ "docker-entrypoint.sh" ]
