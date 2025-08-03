---
tags: [unfinished]
---

# Pinch Analysis 

## From [Wikipedia:][1]

**Pinch analysis** is examining the composite curve and optimizing the utility
costs and heat exchanger costs based on this curve.

The *composite curve* is the graph of the temperature versus heat load of all
hot streams and cold streams, separate lines for each.

The *pinch point* is the temperature at which the two lines are at their
nearest, or at the lowest `Delta T.`


## From [Lecture Material in University of Oklahoma][2]

The slope of the T-H graph is the inverse of $F C_P$ where $F$ is the flowrate
and $C_P$ is the heat capacity at constant pressure. This is from the equation
of enthalpy:

$$ \Delta H = F C_P \Delta T $$

The overlap of the hot streams means that there are no heating or cooling just
the heat exchanger. If the hot stream has the non-overlapping region then there
is a cooling utility required, and the composite is also true which is the non-
overlapping region of the hot stream. We can visualize these non-overlaps as
heaters and coolers after heat transfer, hence the necessity for
heating/cooling utilities. 

When there is a phase change, as the hot/cold stream changes to liquid/vapor,
the T-H line deviates from a straight line. For a single component stream, the
line becomes a complete horizontal line until it changes its phase. (constant
temperature) 

A composite curve, is the combination of all hot streams or all cold streams,
joining their lines. This might be confusing and needs visualization.

Composite curves can be moved and it is by convention that the cold streams are
moved. We move curves to lessen the heat of the cooling and heating utilities,
but there is a compromise to this since the minimum $\Delta T$ would be too small
and the area of the heat exchanger would be too large. (See [@eq:qex-A])

$$ A = \frac{Q}{U \Delta T} $$ {#eq:qex-A}

To limit this area, a $\Delta T_{\text{minimum}}$ is set, which is also called as
HRAT. (Heat Recovery Approximation Temperature)

A graphical procedure is listed in the [lecture][2]:

> - Fix HRAT
> - Draw the hot composite curve and leave it fixed
> - Draw the cold composite curve in such a way that the smallest temperature
> difference is equal to HRAT
> - The temperature at which $\Delta T = \text{HRAT}$ is the PINCH
> - The non-overlap on the right is the Minimum Heating Utility and the
> non-overlap on the left is the Minimum Cooling Utility

Moving a graph visually is too cumbersome. A Problem Table is devised in the [lecture][2].

> 1. Divide the temperature range into intervals and shift the cold temperature scale
> (maybe the shift is equal to HRAT[?], the goal here is to lessen the interval I think.)
> 2. Make a heat balance in each interval
> 3. Cascade the heat surplus/deficit through the intervals.
> 4. Add heat so that no deficit is cascaded
> 5. The temperature at 0 heat is the pinch temperature

[1]: https://en.wikipedia.org/wiki/Pinch_analysis
[2]: https://www.ou.edu/class/che-design/che5480-13/PINCH%20ANALYSIS%20Part%201-%20Pinch%20and%20Minimum%20Utility%20Usage.pdf
