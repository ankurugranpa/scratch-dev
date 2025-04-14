#!/bin/sh
set -e

# scratch-vmのインストール＆リンク処理
cd /src/scratch-vm
echo "Installing scratch-vm dependencies..."
npm install
echo "Linking scratch-vm globally..."
npm link

# scratch-guiのインストール＆scratch-vmとのリンク処理
cd /src/scratch-gui
echo "Installing scratch-gui dependencies..."
npm install
echo "Linking scratch-vm into scratch-gui..."
npm link scratch-vm

# 最後にnpm startでサーバーを起動
exec npm start
