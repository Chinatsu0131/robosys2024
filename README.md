# robosys2024
ロボットシステム学授業用

# memoコマンド
![test](https://github.com/Chinatsu0131/robosys2024/actions/workflows/test.yml/badge.svg)

## 使用方法
リポジトリのURLは"https://github.com/Chinatsu0131/robosys2024"
```
$ git clone https://github.com/Chinatsu0131/robosys2024.git
$ cd robosys2024
```

クローンしてダウンロードを行ってください。その後にcdでディレクトリを変更してからコマンドを使用してください。
コマンドをを実行する際に権限を付与する必要があるため、コマンドを最初に使用する時に以下のコマンドで権限を付与し、実行してください。

```
$ chmod +x memo
$ echo メモしたい内容 | ./memo
$ echo list | ./memo
 [2024-11-24 15:35:28] <メモした内容> 
```

- **入力する際の注意点**
  - echoのあとは半角の空白を入れてからメモする内容を入力するようにしてください。しない場合、エラーが出ます。
  

## 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.7～3.12

## テスト環境
- 対応OS: aUbuntu 20.04以降
- CI/CD: Github Actions
  

## ライセンス
- このソフトウェアパッケージは, 3条項BSDライセンスの下, 再頒布および使用が許可されます。
- ©2024 Takumi Kobayashi
