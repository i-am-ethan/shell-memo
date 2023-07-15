# Write Memo

Write Memoは、簡単に日付付きのメモファイルを作成するためのシェルスクリプトです。  

## 使い方

1. このリポジトリを任意の場所にクローンします。
```
git clone https://github.com/i-am-ethan/shell-memo.git
```

2. .zshrc(または適切なシェルの設定ファイル)を開き、以下の2行を追加します。
```
source /path/to/write_memo.sh
alias memo=writeMemo
```
pathはクローンしたファイルのパスに変更して下さい。(パスはpwdコマンドなどで確認できます)

3. .zshrcファイルを変更したら再読み込みして下さい
```
source ~/.zshrc
```

4. ターミナルでmemoコマンドを実行して、新しいメモを作成します。
```
memo
```
メモは年ごとと月ごとに整理され、$HOME/memo/YYYY/MM/YYYY_MM_DD.md の形式で保存されます。既存のディレクトリやファイルがない場合は、自動的に作成されます。


