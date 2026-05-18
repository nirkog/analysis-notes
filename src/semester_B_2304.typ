#import "@local/math-homework-template:0.1.0": *

#theorem[
  $
  inf overline(S) (P) = sup underline(S) (P) = I <=> integral_a^b f(x) dd(x) = I
  $
]

#proof[
  $arrow.l.double$ direction is obvious (🙂) \
  $=>$ Let $epsilon > 0$. There exists $P$ such that $underline(S)(P) = I - epsilon$, $overline(S) (P) = I + epsilon$. Now, we'll take another partition, $P'$, for which $abs(a_j - a_(j-1)) < delta$ for every $a_j, a_(j-1) in P'$. For small enough $delta$ we get that
  $
  overline(S) (P') <= overline(P) + (\#P) dot delta dot (sup f - inf f) <= overline(S) (P) + 2 epsilon <= I + 2 epsilon.
  $
  In the same manner $underline(S) (P') >= I - 2 epsilon$.
]

// #corollary[
//   Every continuous $f$ is Riemann integrable.
// ]

_Generalization._  A function is Reimann integrable $<=>$ it has a "small" amount of discontinuity points. What does "small" mean?

== Lebesgue measure 0

#definition[
  A set $A subset.eq RR$ is of Lebesgue measure $0$ if for every $epsilon > 0$ it can be covered with open intervals for which
  $
  sum_(i in I) L_i < epsilon
  $
  where $L_i$ is the length of the $i$-th interval.
]

#example[
  $QQ = {r_1, ..., r_n}$ is of Lebesgue measure $0$. The covers $union.big (r_i - epsilon/2^2, r_i + epsilon/2^i)$ satisfies the condition. By the same logic, every countable sets and every countable union of Lebesgue measure $0$ sets is of Lebesgue measure $0$.
]

#problem[
  There exists a partition $RR = A union.plus B$ such that $A$ is of Lebesgue measure $0$ and $B$ is of the first Baire category.
]

#theorem[Lebesgue][
  Let $f: [a, b] -> RR$. $f$ is Riemann integrable if and only if $f$ is bounded and the set of its discontinuity points is of Lebesgue measure $0$.
]

#proof[
  Define
  $
  omega_f (x) = lim_(epsilon -> 0) (sup_((x - epsilon, x + epsilon)) f - inf_((x - epsilon, x + epsilon)) f).
  $
  The set of discontinuity points is
  $
  D = union.big_(epsilon > 0) X_epsilon = union.big_(N > 1) X_(1/N).
  $

  $=>$ If $f$ is Riemann integrable, then it is bounded. Now, assume $D$ is not of Lebesgue measure $0$. Hence, there exists $N$ such that $X_N$ is not of Lebesgue measure $0$, i.e. there exists $c > 0$ such that for every conver $X_(1/N) subset union (a_j, b_j)$
  $
  sum (b_j - a_j) > c.
  $

  $arrow.double.l$ We'll take some partition

  *TODO: Complete this*
]
