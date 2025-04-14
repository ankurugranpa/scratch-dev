# scratchの改造
教育用のノード型プログラミングアプリである[scratch](https://scratch.mit.edu/projects/editor/?tutorial=getStarted)
scratchの拡張機能として`line bot`, `Chat gpt`, `voice vox`を扱える
## require
```
docker 
docker compose 
```
- demo
scratch上でchat gptを使用した line botの構築
<div><video controls src="https://github.com/user-attachments/assets/0147dd46-676b-4324-95f2-3d3d2c67a52d" muted="false"></video></div>


## 使用法
### With docker
- リポジトリのセットアップ
```
make init-submodules && make install-line-fastapi
```

- APIキーの設定
`~/scratch-dev/scratch/scratch-vm/src/util/original-util/env.js`と
`~/scratch-dev/line-fastAPI.env`にAPIキーを入力する


```
docker compose up
```
