# Typst履歴書テンプレート
![PDF](https://img.shields.io/badge/Resume-PDF-blue)

## これは何？
[Typst](https://typst.app/)で履歴書のテンプレートを作成しました。
履歴書は[こちら](/main.pdf)をご覧ください。
自由に改変、利用してもいいです。
何かの規約とかに則って作っているわけではないので、おかしな点があればご指摘ください！

## 使い方

1. `main.typ` の「私」「アドレス」「学歴」「職歴」などの引数を編集する
2. 同梱フォントを指定してコンパイルする（`--font-path` が必要です）

```bash
typst compile --font-path fonts main.typ
```

`fonts/` には [Noto Serif JP](https://fonts.google.com/noto/specimen/Noto+Serif+JP) / [Noto Sans JP](https://fonts.google.com/noto/specimen/Noto+Sans+JP) を同梱しています（[SIL Open Font License 1.1](https://scripts.sil.org/OFL)。ライセンス全文は `fonts/OFL-*.txt`）。  
`--font-path fonts` を付けないと `unknown font family: noto serif jp` になり、日本語フォントが使われません。

## 参考にした書式

[rireki-style](https://github.com/shigio/rireki-style)

[doda履歴書テンプレート](https://doda.jp/guide/rireki/template/)
