#let article(
  title: "Заголовок отчета",

  author: "Автор",

//   paper: "a4",

  body,
) = {
  set document(title: title, author: author)

  set text(font: "Times New Roman", size: 13pt)
  set par(
    first-line-indent: 1.25cm,
  )
  
  set page(
    // paper: paper,
    background: place(
        top,
        rect(
            width: 2cm,
            height: 100%,
            fill: rgb("#699AC2")
        )
    ),
    margin: (bottom: 2.5cm, top: 0.8cm, left: 3cm, right: 2.5cm),
  )

  page(align(left + top)[
    // #v(-1cm)
    #h(11.5cm)
    #box(
        height: 30pt,
        image("logo_light.png")
    )
    #v(0.3cm)
    #h(-2.7cm)
    #box(
        fill: rgb("#2C5985"),
        width: 0.7fr,
        inset: 10pt,
    )[
        #text(size: 1.8em, fill: white)[*#title*]
    ]
    // #h(0.5cm)

    #v(1.5em, weak: true)
    #text(size: 1.7em, font: "Savoye LET")[#author]
    #body
    #v(1.5em, weak: true)
    // #lorem(100)
  ])
}

// #set par(first-line-indent: (amount: 1.25cm, all: true))
#set heading(numbering: "1.1")
// #show heading: pad.with(left: 1.25cm)
// #set enum(numbering: enum-numbering)
// #set page(width: auto)

#set par(justify: true)