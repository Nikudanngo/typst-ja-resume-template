# Typst履歴書テンプレート (ja-resume)
![PDF](https://img.shields.io/badge/Resume-PDF-blue)

## これは何？
[Typst](https://typst.app/)で履歴書のテンプレートを作成しました。
履歴書は[こちら](/main.pdf)をご覧ください。
自由に改変、利用してもいいです。
何かの規約とかに則って作っているわけではないので、おかしな点があればご指摘ください！

[Typst Universe](https://typst.app/universe/package/ja-resume) にパッケージとして公開しているので、`typst init` から使うこともできます。

## 使い方（パッケージとして利用する）

```bash
typst init @preview/ja-resume:0.1.0 my-resume
```

生成された `my-resume/main.typ` の氏名・住所・学歴・職歴などを編集してコンパイルします。日本語フォントは同梱していないため、`Noto Serif JP` をインストールするか `--font-path` でフォントの場所を指定してください（後述）。

```bash
typst compile --font-path <フォントを置いたフォルダ> my-resume/main.typ
```

`#import` で関数だけ使うこともできます。

```typ
#import "@preview/ja-resume:0.1.0": 履歴書

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

`学歴` / `職歴` / `資格` は `(年, 月, 内容)` の配列で書きます。見出し行・空行・「以上」、1枚目/2枚目への分割は `lib.typ` 側が行います。行数の上限は [main.typ](main.typ) のコメントを参照してください。

## 使い方（このリポジトリを直接cloneする場合）

このリポジトリには開発・デモ用に日本語フォント（`fonts/`）と証明写真のサンプル（`image/`）を同梱しています。

1. `main.typ` を編集する（氏名・住所・学歴・職歴など）
2. 同梱フォントを指定してコンパイルする（`--font-path` が必要です）

```bash
typst compile --font-path fonts main.typ
```

## 日本語フォントについて

このパッケージ自体には日本語フォントを含めていません（パッケージサイズを抑えるため）。以下のいずれかで用意してください。

- [Noto Serif JP](https://fonts.google.com/noto/specimen/Noto+Serif+JP) / [Noto Sans JP](https://fonts.google.com/noto/specimen/Noto+Sans+JP) をダウンロードし、`--font-path` でフォルダを指定する
- システムに日本語フォントをインストール済みなら、`lib.typ` の `set text(font: (...))` を使いたいフォント名に書き換える

このリポジトリの `fonts/` に同梱しているフォントは [SIL Open Font License 1.1](https://scripts.sil.org/OFL) です（ライセンス全文は `fonts/OFL-*.txt`）。本パッケージ本体（コード）のライセンス（MIT）とは別物です。

`--font-path` を付けずにコンパイルすると `unknown font family: noto serif jp` になり、日本語フォントが使われません。

## 参考にした書式

[rireki-style](https://github.com/shigio/rireki-style)

[doda履歴書テンプレート](https://doda.jp/guide/rireki/template/)
