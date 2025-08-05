#import "@preview/cetz:0.4.1"

#set page(width: auto, height: auto, margin: 10pt)

#cetz.canvas({
  import cetz.draw: *

  line((0, 0), (8, 0), name: "intno")
  set-style(mark: (end: "straight"))
  line((0, 0), (0, 10), name: "temp")

  set-style(stroke: red)
  line((1, 9.3), (1, 5.5), name: "hot5")
  line((2.5, 8), (2.5, 2.5), name: "hot4")

  set-style(stroke: blue)
  line((4, 3.6), (4, 7.1), name: "cold3")
  line((5.5, 3.1), (5.5, 6.4), name: "cold2")
  line((7, 1.6), (7, 7.6), name: "cold1")

  set-style(stroke: (dash: "dashed", paint: gray, thickness: 0.5pt), mark: (end: none))
  line((1, 9.3), (0, 9.3))
  line((2.5, 8), (0, 8))
  line((0, 7.6), (7, 7.6))
  line((4, 7.1), (0, 7.1))
  line((5.5, 6.4), (0, 6.4))
  line((4, 3.6), (0, 3.6))
  line((5.5, 3.1), (0, 3.1))
  line((2.5, 2.5), (0, 2.5))
  line((7, 1.6), (0, 1.6))
  line((1, 5.5), (0, 5.5))

  content(
    ("temp.start", 50%, "temp.end"),
    angle: "temp.end",
    padding: .1,
    anchor: "south",
    [Temperature $degree "C"$],
  )
  content(
    ("intno.start", 50%, "intno.end"),
    angle: "intno.end",
    padding: .1,
    anchor: "north",
    [Streams],
  )  
  content("hot5.0%", anchor: "south", padding: .2em, [510])
  content("hot5.100%", anchor: "north", padding: .2em, [300])
  content("hot4.0%", anchor: "south", padding: .2em, [440])
  content("hot4.100%", anchor: "north", padding: .2em, [140])
  content("cold1.0%", anchor: "north", padding: .2em, [90])
  content("cold1.100%", anchor: "south", padding: .2em, [400])
  content("cold2.0%", anchor: "north", padding: .2em, [170])
  content("cold2.100%", anchor: "south", padding: .2em, [350])
  content("cold3.0%", anchor: "north", padding: .2em, [200])
  content("cold3.100%", anchor: "south", padding: .2em, [390])
})
