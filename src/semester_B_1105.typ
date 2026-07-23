#import "@local/math-homework-template:0.1.0": *

// #show: doc => note(doc, "Real Analysis - Semester B")

== The Multi Dimensional Riemann Integral

#definition[][
  Let $Q subset.eq RR^d$ be a hyperrectangle such that $Q = I_1 times ... times I_d$, where $I_i$ are intervals. A _partition_ $Pi = (Q_1, ..., Q_n)$ is a set of hyperrectangles such that $union Q_j = Q$ and for any $i, j$ $Q_i inter Q_j subset.eq partial Q_i$ (The hyperrectangles only interesct on the boundary).
]

#definition[][
  A partition $Pi = (Q_1, ..., Q_n)$ is _$delta$-fine_ if for each $Q_i = I_i_1 times ... times I_i_d$, $abs(I_i_j) <= delta$ for each $1 <= j <= d$.
]

#definition[][
  Let $Q subset.eq RR^d$ be a hyperrectangle, $f: Q -> RR$, let $Pi = (Q_1, ..., Q_n)$ be a partition of $Q$. Let $Xi = (zeta_1, ..., zeta_n)$ where $zeta_i in Q_i$ for each $1 <= i <= n$. The _Riemann sum_ is defined as 
  $
  R(f; Pi, Xi) = sum f(zeta_j) "Vol"_d Q_j.
  $
  Where we define
  $
  "Vol" I_1 times ... times I_d = product_(j=1) "Length"(I_j).
  $
] 

#definition[][
  Let $Q subset.eq RR^d$ be a hyperrectangle, $f: Q -> RR$. We say that $f$ is _Riemann integrable_ if there exists $T$ such that for every $epsilon > 0$ there exists $delta > 0$ such that if $Pi$ is $delta$-fine,
  $
  abs(R(f; Pi, Xi) - T) <= epsilon.
  $
  We denote $integral_Q f(x) dd(x) = T$. The upper and lower _Darboux sums_ are defined as
  $
  underline(S)(f, Pi) = sum (inf_Q_j f) dot "Vol" Q_j, quad overline(S) (f, Pi) = sum (sup_Q_j f) dot "Vol" Q_j.
  $
]

#theorem[][
  The following conditions are equivalent:
  #enum(
    [
      $f$ is Riemann integrable on $Q$.
    ],
    [
      for every $epsilon > 0$ there exists $delta > 0$ such that if $Pi$ is $delta$-fine then
      $
      abs(overline(S) (f, Pi) - underline(S) (f, Pi)) <= epsilon
      $
    ],
    [
      $inf_Pi overline(S) (f, Pi) = sup_Pi underline(S) (f, Pi)$.
    ],
    numbering: "a)"
  )
]

#proof[
  // TODO: Complete
]

#definition[Measure 0][
  A set $E subset.eq RR^d$ has _measure 0_ if for every $epsilon > 0$ there exists a cover $E subset.eq union.big_j Q_j$ such that $sum "Vol" Q_j < epsilon$.  
]

#problem[
  $E subset.eq RR^d$ is of measure 0 $<=>$ for every $epsilon > 0$ there exists a cover of of $E$ by balls $B(x_i, r_i)$ such that $sum r_i^(d_i) < epsilon$.
] 

#theorem[Lebesgue][
  Let $f$ be a Riemann integrable function on $Q$ $<=>$ $f$ is bounded and the set of discontinuity points of $f$ is of measure 0. 
] <thr:leb>

_Properties:_ Assume $f, g$ are Riemann integrable in $Q$. Then
#enum(
  [
    For each $c in RR$, $c f$ is integrable and $integral_Q c f dd(x) = c integral_Q f dd(x)$.
  ],
  [
    $integral_Q (alpha f + beta g) dd(x) = alpha integral_Q f dd(x) + beta integral_Q g dd(x)$.
  ],
  [
    $(inf f) "Vol" Q_j <= integral f dd(x) <= (sup f) "Vol" Q_j$. // TODO: Where inf, sup?
  ],
  numbering: "a)"
)

#proposition[
  If $f$ is Riemann integrable and ${f != 0}$ has measure 0 then $integral f dd(x) = 0$
]
 
#proof[
  // TODO: Complete
]

#proposition[
  Assume $f >= 0$, $integral f(x) dd(x) = 0$. Then ${ f != 0}$ has measure 0.
] <prp:m0>

#problem[
  Prove @prp:m0.
]

#conclusion[
  If $f, g$ are Riemann integrable and ${ f != g }$ has measure 0, then $integral f dd(x) = integral g dd(x)$.
]

#definition[][
  Assume $E subset.eq RR^d, f: RR^d -> RR$. We define the Riemann integral of $f$ on $E$ as
  $
  integral_E f(x) dd(x) = integral_Q f(x) dot 1_E (x) dd(x)
  $
  where $E subset.eq Q$ is a hyperrectangle ($f$ can be defined arbitrarily outside $E$), and
  $
  1_E (x) = cases(
   1 &quad x in E,
   0 &quad x in.not E,
  ) space .
  $
] <def:genint3d>

#problem[
  Show that @def:genint3d does not depend on the choice of $Q$.
]

#conclusion[
  From @thr:leb it follows that

  - $1_E$ is integrable $<=>$ the boundary of $E$ has measure 0.
 
  - $f, g$ is integrable $<=>$ $f g$ is integrable.
]

#conclusion[
  If $partial E$ has measure 0 and $E$ is bounded then every bounded function $f$ on $E$ and is continuous except for a set of measure 0 is integrable on $E$.
] 

#problem[
  Fill the details of the proof of the above conclusion.
]

#conclusion[
  If $f$ is integrable on $Q$ and $partial E$ has measure 0, then $f$ is integrable on $E$.
]

#definition[Jordan Measure][
  A set $E subset.eq RR^d$ is _Jordan measurable_ if $partial E$ has measure 0. Then, we define 
  $
  "(Jordan)" "Vol"_d E = integral_E dd(x).
  $
]

#problem[
  Find an open, bounded set that is not Jordan measurable.
]

#problem[
  Find a compact set that is not Jordan measurable.
]

#problem[
  Show that $E$ is Jordan measurable if and only if for every $epsilon > 0$ there exists a partition $Pi$ such that for every $Q supset E$:
  $
  ast.o sum_(Q_j inter E != emptyset) op("Vol"_d) (Q_j) - sum_(Q_j subset E) op("Vol"_d) (Q_j) < epsilon
  $
  and $ast.o$ holds for every partition fine enough.
] 

_Properties:_ 
- Assume $E_1, E_2$ are Jordan measurable. Then so are $E_1 union E_2, E_1 inter E_2$ and
  $
  "Vol"_d (E_1 union E_2) + "Vol"_d (E_1 inter E_2) = "Vol"_d E_1 + "Vol"_d E_2.
  $

- $"Vol"_d (union E_j) = sum "Vol"_d (E_j)$ ($E_j$ are foreign).

- $"Vol"_d (E + x) = "Vol"_d (E)$.
