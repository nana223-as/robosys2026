# Colorコマンド
![test](https://github.com/nana223-as/robosys2026/actions/workflows/test.yml/badge.svg)

抵抗器の4本のカラーコードから抵抗値と許容差を
計算するコマンドです。

## 使用方法
色を英語で入力し、空白で区切ります。

```
$ echo "brown black red gold" | ./color
1000 5
```

左側の数字は抵抗値（Ω）、
右側の数字は許容差（%）を表します。

## 入力する色

- 1本目：brownからwhite
- 2本目：blackからwhite
- 3本目：blackからwhite、gold、silver
- 4本目：gray、violet、blue、green、
  brown、red、gold、silver

## エラー処理
存在しない色や色の数が正しくない場合、
標準エラー出力にErrorを表示します。
終了ステータスは1になります。
入力がない場合もエラーになります。

## 必要なソフトウェア
- Python
  - テスト対象バージョン：3.10〜3.14

## テスト環境
- Ubuntu（ubuntu-latest）

## ライセンス
- このソフトウェアはBSD-3-Clauseライセンスの
  もとで公開されています。
- © 2026 Nagomi Shimizu


