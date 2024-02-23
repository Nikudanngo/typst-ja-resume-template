#import "template.typ": *
#let title = [#text(tracking: 1em,size: 14pt,[履歴書])]

#let fontSerif = ("Noto Serif", "Noto Serif CJK JP")
#let fontSan = ("Noto Sans", "Noto Sans CJK JP")

#set text(font: fontSerif, size: systemFontSize)
#set page(paper: "jis-b5",margin: 1.5cm)

= #title
// 使い方の説明。
// "私"と"アドレス"など日本語名の関数の引数を変更してください。

#move( dy: -1cm,
  stack(
    align(bottom,
      grid(
        columns: (5fr,2fr),
        私(
          性読み: "りれきしょ",
          名読み: "たろう",
          性: "履歴書",
          名: "太郎",
          生年月日: "平成xx年xx月xx日",
          年齢: 99
        ),
        証明写真(写真: "image/testImage.png")
        // 証明写真()
      ),
    ),
    アドレス(
      住所ふりがな1: "とうきょうとすみだくおしあげ",
      住所1: "東京都墨田区押上１丁目１−２",
      郵便番号1: "131-0045",
      電話番号1: "123-4567-8901",
      Email1: "sample@example.com",
      住所ふりがな2: "",
      住所2: "https://github.com/Nikudanngo/typst-ja-resume-template",
      郵便番号2: "",
      電話番号2: "",
      Email2: ""
    ),
    linebreak(),
    経歴(
      mode: "学歴・職歴",
      columns: 14,
      grid(
        gutter: 0.61cm,
        学歴(),
        学歴(
          年: "平成1",
          月: "10",
          学歴: "俺、爆誕"
        ),
        学歴(
          年: "平成20",
          月: "3",
          学歴: "スクスク育つ"
        ),
        学歴(
          年: "平成30",
          月: "4",
          学歴: "宇宙大学ツヨツヨ学部エンジニア学科 入学"
        ),
        学歴(
          年: "令和1",
          月: "8",
          学歴: "大規模開発サークル設立 \u{2192} サークル崩壊"
        ),
        linebreak(),
        職歴(),
        職歴(
          年: "令和6",
          月: "4",
          職歴: "大手IT系メーカーベンチャー企業 就職"
        ),
        以上()
      )
    ),
  ),
)
#pagebreak()

#stack(
  経歴(
    mode: "学歴・職歴",
    columns: 5,
    hegithLength: 5cm,
    linebreak(),
    // grid(
    //   gutter: 0.61cm,
    //   資格(
    //     年: "平成1",
    //     月: "10",
    //     資格: "大学入学"
    //   ),
    // )
  ),
  linebreak(),
  経歴(
    mode: "資格",
    columns: 7,
    hegithLength: 6.6cm,
    grid(
      gutter: 0.61cm,
      資格(
        年: "平成1",
        月: "12",
        資格: "普通自動車免許 取得"
      ),
    )
  ),
  linebreak(),
  志望動機(
    [私がこの職に応募する理由は、]
  ),
  linebreak(),
  本人希望(
    [私は〇〇がしたい]
  ),
  place(
    bottom + right,
    dy: 10pt,
    [Made with Typst]
  )
)