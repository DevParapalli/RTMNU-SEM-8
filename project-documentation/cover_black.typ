#let authors = (
  (name: "Aditya S. Deshmukh", id: "2021016600840367"),
  (name: "Devansh S. Parapalli", id: "2021016600817392"),
  (name: "Kaustubh D. Warade", id: "2021016600880071"),
  (name: "Yashasvi B. Thool", id: "2021016600869734"),
)

#let logo = "college_logo_bw_inverted.png"


#set document(author: authors.map(a => a.name), title: "AIKO: AI-powered Knowledge Organizer", date: auto)

#set page(
  margin: (left: 25mm, right: 25mm, top: 25mm, bottom: 25mm),
  numbering: none,
  number-align: center,
  paper: "a4",
)

#set text(font: "Times New Roman", lang: "en", size: 12pt, top-edge: 0.7em, bottom-edge: -0.3em, hyphenate: true, weight: "bold", rgb("#ffffff"))
#set par(justify: true, leading: 1em, spacing: 1.2em, first-line-indent: 0.5in)
// Outer Title Page
#page(
  
  fill: rgb("#000000"),
  background: {
    // Inner content border
    rect(
      stroke: 6pt + rgb("#ffffff"),
      inset: 0.25in,
      width: 100% - 1.0in,
      height: 100% - 1.0in,

    )

    // rect()

    

    // Spine top text
    // place(
    //   top,
    //   dx: 0.51in,
    //   dy: 0.5in,
    //   rotate(0deg, text(size: 12pt, "AIKO")),
    // )

    // Spine middle text
    // place(
    //   top,
    //   dy: 50%,
    //   dx: -12.5em,
    //   rotate(-90deg, text(size: 18pt, weight: "black", "AIKO: AI-POWERED KNOWLEDGE ORGANIZER")),
    // )

    // // Session at the bottom of the spine
    // place(
    //   bottom,
    //   dx: 0.5in,
    //   dy: -0.5in,
    //   rotate(0deg, text(size: 12pt, weight: "black", "2024-2025")),
    // )
  },
  [
    // #v(.4fr)

    #align(center)[
    #block(text(weight: "black", size: 18pt, "AIKO: AI-POWERED KNOWLEDGE ORGANIZER")) // 24pt
    #v(2fr)
    #block(text(size: 12pt, "B.Tech. PROJECT"))
    #v(1fr)

    #par(leading: 0.15em)[#text(size: 12pt)[
      Submitted to Rashtrasant Tukdoji Maharaj Nagpur University,
      Nagpur \ in Partial Fulfillment of the\
      Requirements for the Degree of BACHELOR OF TECHNOLOGY in\
      COMPUTER SCIENCE AND ENGINEERING
    ]]

    #v(3fr)

    By
    #v(-1em)
    #table(
      stroke: none,
      columns: 2,
      align: left,
      row-gutter: -0.7em,
      column-gutter: 1em,
      ..authors.map(author => (
        strong(author.name),
        [#strong[(ID #author.id)]],
      )).flatten()
    )
    #v(2fr)

    #par(leading: 0.15em)[
      #text(size: 12pt, "Guide") \
      #text(size: 14pt, strong("Dr. Devchand J. Chaudhari")) \
      #text(size: 12pt, "Assistant Professor")  
    ]

    #v(1fr)

    #if logo != none {
      image(logo, width: 30%)
    }

    #v(2fr)

    #par(leading: 0.15em)[#block(
      text(size: 14pt)[#align(center)[DEPARTMENT OF COMPUTER SCIENCE AND ENGINEERING\
          GOVERNMENT COLLEGE OF ENGINEERING NAGPUR]],
    )]

    #v(1fr)
    #block(strong("2024-2025"))
    ]
  ],
)
