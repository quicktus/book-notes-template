#import grid : cell

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
    [#rect[DATE READ]],
  ),
    cell(
    align: top + left,
    colspan: 10,
    [#rect[VERDICT]],
  ),
)

#let pat = pattern(
  size: (20pt, 20pt),
  relative: "parent",
  place(
    dx: 5pt,
    dy: 5pt,
    rotate(45deg, square(
      size: 3pt,
      fill: rgb("#dbdbdb"),
    )),
  ),
)

#rect(width: 100%, height: 650pt, fill: pat)


