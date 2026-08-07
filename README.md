# Typst履歴書テンプレート
![PDF](https://img.shields.io/badge/Resume-PDF-blue)

## これは何？
[Typst](https://typst.app/)で履歴書のテンプレートを作成しました。
履歴書は[こちら](/main.pdf)をご覧ください。
自由に改変、利用してもいいです。
何かの規約とかに則って作っているわけではないので、おかしな点があればご指摘ください！

## 使い方

1. `main.typ` を編集する（氏名・住所・学歴・職歴など）
2. 同梱フォントを指定してコンパイルする（`--font-path` が必要です）

```bash
typst compile --font-path fonts main.typ
```

`学歴` / `職歴` / `資格` は `(年, 月, 内容)` の配列で書きます。見出し行・空行・「以上」、1枚目/2枚目への分割は `template.typ` 側が行います。

```typ
#import "template.typ": 履歴書

#show: 履歴書.with(
  性: "履歴書",
  名: "太郎",
  学歴: (
    (年: "平成30", 月: "4", 内容: "〇〇大学 入学"),
  ),
  職歴: (
    (年: "令和6", 月: "4", 内容: "株式会社〇〇 入社"),
  ),
  // ...
)
```

`fonts/` には [Noto Serif JP](https://fonts.google.com/noto/specimen/Noto+Serif+JP) / [Noto Sans JP](https://fonts.google.com/noto/specimen/Noto+Sans+JP) を同梱しています（[SIL Open Font License 1.1](https://scripts.sil.org/OFL)。ライセンス全文は `fonts/OFL-*.txt`）。  
`--font-path fonts` を付けないと `unknown font family: noto serif jp` になり、日本語フォントが使われません。

## 参考にした書式

[rireki-style](https://github.com/shigio/rireki-style)

[doda履歴書テンプレート](https://doda.jp/guide/rireki/template/)
