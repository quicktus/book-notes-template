#import grid : cell

#let scaling_factor = 66.6%

#set page(
  paper: "a4",
  margin: (x: 1.5cm, y: 1.2cm),
)
#set text(
  font: "Open Sans",
  lang: "en",
  size: 10pt,
  fill: rgb("#5d5d5d")
)
#set rect(
  inset: 10pt,
  fill: rgb("#dbdbdb"),
  width: 100%,
  height: 50pt
)

#let pat = pattern(
  size: (scaling_factor * 20pt, scaling_factor *20pt),
  relative: "parent",
  place(
    dx: scaling_factor * 5pt,
    dy: scaling_factor * 5pt,
    rotate(45deg, square(
      size: scaling_factor * 3pt,
      fill: rgb("#dbdbdb"),
    )),
  ),
)

#set align(center)
#scale(scaling_factor)[
  // form box
  #grid(
    columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr,),
    rows: 2,
    align: center + horizon,
    gutter: 4pt,
    cell(
      align: top + left,
      colspan: 1,
      [#rect[NR]],
    ),
      cell(
      align: top + left,
      colspan: 7,
      [#rect[TITLE]],
    ),
      cell(
      align: top + left,
      colspan: 4,
      [#rect[AUTHOR]],
    ),
      cell(
      align: top + left,
      colspan: 2,
      [#rect[STARTED ON]],
    ),
      cell(
      align: top + left,
      colspan: 7,
      [#rect[VERDICT]],
    ),
      cell(
      align: top + left,
      colspan: 3,
      [#rect[RECOMMENDED BY]],
    ),
  )

  // free text field
  #rect(width: 100%, height: 660pt, fill: pat)
]
