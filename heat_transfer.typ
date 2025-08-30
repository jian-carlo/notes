#import "@preview/cetz:0.4.1"

#let degC = math.degree + "C"
#let parf(num, den) = $(partial num) / (partial den)$

= Introduction to Heat Transfer
== The General Property Heat Balance

$ q_(x|x) + dot(q)(Delta x dot A) = q_(x|x + Delta x) + rho c_p parf(T, t)
(Delta x dot A) $
$ "rate of heat in" + "rate of generation of heat" = "rate of heat out" + "rate of accumulation of heat" $

#align(center,
  cetz.canvas({
    import cetz.draw: *
    on-xz({ // top face
      rect((0,0,0),(1,1,0))
    })
    on-xz({ // bottom face
      rect((0,0,1),(1,1,1))
    })
    on-xy({ // back face
      rect((0,0,0),(1,-1,0))
    })
    on-xy({ // front face
      rect((0,0,1),(1,-1,1))
    })
    on-yz({ // left face
      rect((1,0,0),(0,-1,0))
    })
    on-yz({ // left face
      rect((1,0,-1),(0,-1,-1))
    })
  })
)
