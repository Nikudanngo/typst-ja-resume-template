#let systemFontSize = 8pt
#let nameFontSize = 16pt
#let inputFontSize = 10pt

#let addSpace(input) = {
  box(
    [#pad(left:1cm,[#input])],
  )
}

#let 私(性読み: "",名読み: "", 性: "",名: "",生年月日: "",年齢: 0) = {
  stack(
    place(
      top + right,
      dy: -10pt,
      datetime.today().display(
        "[year]年[month]月[day]日現在",
      )
    ),
    rect(
      stroke: (
        bottom: none,
        top: 1.5pt,
        left: 1.5pt,
        right: 1.5pt
      ),
      height: auto,
      width: 100%,
      [
        #grid(
          columns: (1.5cm,4cm,1fr),
          [ふりがな],
          [#align(center,性読み)],
          [#align(start,名読み)]
        )
      ] 
    ),
    line(
      length: 100%,
      stroke: (
        dash:"dashed",
      )
    ),
    rect(
      stroke: (
        bottom: 0.5pt,
        top: none,
        left: 1.5pt,
        right: 1.5pt
      ),
      height: auto,
      width: 100%,
      [
        #align(top,
          grid(
            columns: (1.5cm,4cm,1fr),
            [氏 #h(0.6cm)名],
            [
              #pad(y: 0.4cm,align(center + horizon,text(nameFontSize,性)))
            ],
            [
              #pad(y: 0.4cm,align(start + horizon,text(nameFontSize,名)))
            ]
              
          )
        )
      ]
    ),
    rect(
      stroke: (
        bottom: 0.5pt,
        top: none,
        left: 1.5pt,
        right: 1.5pt
      ),
      height: auto,
      width: 100%,
      [
        #align(start + top,
          grid(
          columns: (1.5cm,1fr),
          [生年月日],
            pad(y: 0.2cm,[#addSpace(text(inputFontSize,[#生年月日 生 #h(0.6cm) (満 #h(0.5em) #年齢 才)]))])
          )
        )
      ]
    )
  )
}

#let 証明写真(写真: "") = {
  set text(size: 7pt)
  pad(
    bottom: 0.3cm,
    left: 0.4cm,
    box(
      stroke: (
        dash:"dashed",
      ),
      height: 4cm,
      width: 3cm,
      [
        #if (写真 == ""){
          align(
            center + horizon,
            [
              写真を貼る位置\
              (縦 40mm, 横 30mm)
            ]
          )
        } else {
          image(写真, width: 3cm, height: 4cm)
        }
      ]
    )
  )
}

#let アドレス(住所ふりがな1: "", 住所1: "",住所ふりがな2: "", 住所2: "",郵便番号1: "",郵便番号2: "", 電話番号1:"",Email1:"",電話番号2:"",Email2:"") = {
  stack(
    grid(
      columns: (5fr,2fr),
      [
        #stack(
          rect(
            stroke: (
              bottom: none,
              top: none,
              left: 1.5pt,
              right: 0.5pt
            ),[
              #grid(
                columns: (1.5cm,1fr),
                [ふりがな],
                [#align(center,住所ふりがな1)]
              )
            ]
          ),
          line(stroke: (dash:"dashed"), length: 100%)
        )
      ],
      [
        #rect(
          width: 100%,
          stroke: (
            bottom: 0.5pt,
            top: 1.5pt,
            left: none,
            right: 1.5pt
          ),[
          電話 #h(10pt) #電話番号1
          ]
        )
      ]
    ),
    grid(
      columns: (5fr,2fr),
      [
        #rect(
          width: 100%,
          height: 1.8cm,
          stroke: (
            bottom: 0.5pt,
            top: none,
            left: 1.5pt,
            right: 0.5pt
          ),[
            #if (郵便番号1 == "") {
              [現住所 (〒 #h(20pt) - #h(20pt))]
            } else {
              [現住所 (〒 #text(tracking: 1pt,systemFontSize,郵便番号1))]
            }
            #pad(y: 0.2cm ,align(center,text(inputFontSize,住所1)))
          ]
        )
      ],
      [
        #rect(
          width: 100%,
          height: 1.8cm,
          stroke: (
            bottom: 0.5pt,
            top: none,
            left: none,
            right: 1.5pt
          ),[
            E-mail
            #pad(y: 0.3cm ,align(center,Email1))
          ]
        )
      ]
    ),
    grid(
      columns: (5fr,2fr),
      [
        #stack(
          rect(
            stroke: (
              bottom: none,
              top: none,
              left: 1.5pt,
              right: 0.5pt
            ),[
              #grid(
                columns: (1.5cm,1fr),
                [ふりがな],
                [#align(center,住所ふりがな2)]
              )
            ]
          ),
          line(stroke: (dash:"dashed"), length: 100%)
        )
      ],
      [
        #rect(
          width: 100%,
          stroke: (
            bottom: 0.5pt,
            top: none,
            left: none,
            right: 1.5pt
          ),[
          電話 #h(10pt) #電話番号2
          ]
        )
      ]
    ),
    grid(
      columns: (5fr,2fr),
      [
        #rect(
          width: 100%,
          height: 1.8cm,
          stroke: (
            bottom: 1.5pt,
            top: none,
            left: 1.5pt,
            right: 0.5pt
          ),[
           #if (郵便番号2 == "") {
              [連絡先 (〒 #h(20pt) - #h(20pt))]
            } else {
              [連絡先 (〒 #text(tracking: 1pt,systemFontSize,郵便番号2))]
            }
            #pad(y: 0.2cm ,align(center,text(inputFontSize,住所2)))
          ]
        )
      ],
      [
        #rect(
          width: 100%,
          height: 1.8cm,
          stroke: (
            bottom: 1.5pt,
            top: none,
            left: none,
            right: 1.5pt
          ),[
            E-mail
            #pad(y: 0.3cm ,align(center,Email2))
          ]
        )
      ]
    )
  )
}

#let 学歴(年:"", 月:"",学歴: "") = {
  set text(inputFontSize)
  grid(
    columns: (1.5cm,0.8cm,1fr),
    [
      #align(center,年)
    ],
    [
      #align(center,月)
    ],
    [
      #if (年 == "" and 月 == "" and 学歴 == "") {
        align(center,[学歴])
      } else {
        align(start + horizon,[#h(5pt)#学歴])
      }
    ]
  )
}

#let 職歴(年:"", 月:"",職歴:"") = {
  set text(inputFontSize) 
  grid(
    columns: (1.5cm,0.8cm,1fr),
    [
      #align(center,年)
    ],
    [
      #align(center,月)
    ],
    [
      #if (年 == "" and 月 == "" and 職歴 == "") {
        align(center,[職歴])
      } else {
        align(start + horizon,[#h(5pt)#職歴])
      }
    ]
  )
}

#let 資格(年:"", 月:"",資格:"") = {
  set text(inputFontSize)
  grid(
    columns: (1.5cm,0.8cm,1fr),
    [
      #align(center,年)
    ],
    [
      #align(center,月)
    ],
    [
      #align(start + horizon,[#h(5pt)#資格])
    ]
  )
}

#let　以上() = {
  set text(inputFontSize)
  grid(
    columns: (1.5cm,0.8cm,1fr),
    [],
    [],
    [
      #align(end + horizon,[以上#h(2cm)])
    ]
  )
}

// mode: "学歴・職歴" or "資格"
#let 経歴(children,hegithLength: 12.6cm,columns: 0,mode:"") = {
  stack(
    box(
      stroke: (
        bottom: 1.5pt,
        top: 1.5pt,
        left: 1.5pt,
        right: 1.5pt
      ),
      height: hegithLength,
      width: 100%,
      [
        #grid(
          columns: (1.5cm,0.8cm,1fr),
          [
            #rect(
              stroke: (
                bottom: none,
                top: none,
                left: none,
                right: 0.5pt
              ),
              height: 100%,
              width: 100%,
              [
                #align(center,[年])
              ]
            )
          ],
          [
            #rect(
              stroke: (
                bottom: none,
                top: none,
                left: none,
                right: 0.5pt
              ),
              height: 100%,
              width: 100%,
              [
                #align(center,[月])
              ]
            )
          ],
          [
            #rect(
              width: 100%,
              height: 100%,
              stroke: (
                bottom: none,
                top: none,
                left: none,
                right: none,
              ),
              align(center,[
                #if (mode == "学歴・職歴") {
                  [学歴・職歴(各別にまとめて書く)]
                } else if (mode == "資格") {
                  [免許・資格]
                }]
              )
            )
          ]
        )
        #place(
          start + top,
          dy: 10pt,
          [
            #let n = 0
            #while n < columns {
              [#pad(y: 0.26cm,line(stroke: 0.5pt, length: 100%))]
              n = n + 1
            }
          ]
        )
        #place(
          top + left,
          dy: 0.9cm,
        children
        )
      ]
    ),
  )
}

#let 志望動機(children) = {
  stack(
    rect(
      stroke: (
        bottom: 1.5pt,
        top: 1.5pt,
        left: 1.5pt,
        right: 1.5pt
      ),
      height: 5cm,
      width: 100%,
      [
        志望の動機、特技、好きな学科、アピールポイントなど
        #linebreak()
        #set text(inputFontSize)
        #children
      ]
    )
  )
}

#let 本人希望(children) = {
  stack(
    rect(
      stroke: (
        bottom: 1.5pt,
        top: 1.5pt,
        left: 1.5pt,
        right: 1.5pt
      ),
      height: 5cm,
      width: 100%,
      [
        本人希望記入欄(特に給料・職種・勤務時間・勤務地・その他についての希望があれば記入)
        #linebreak()
        #set text(inputFontSize)
        #children
      ]
    )
  )
}
