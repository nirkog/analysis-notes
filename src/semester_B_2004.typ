#import "@local/math-homework-template:0.1.0": *

== Integrals of Rational Functions

=== Method

Rational functions are functions of the form $f(x) = P(x)/Q(x)$. For example: $f(x) = (x^3 - 3)/(x^3 + x)$. \
#underline[The method:] Represent $f$ as a sum of simple fractions.

#lemma[
  Let $tilde(P), Q$ be polynomials. If $Q = Q_1 Q_2$ where $Q_1, Q_2$ have no common roots, and $deg tilde(P) < deg Q$, then
  $
  tilde(P)/Q = S_1/Q_1 + S_2/Q_2
  $
  for some polynomials $S_1, S_2$ .
]

#proof[
  $Q_1, Q_2$ have no common roots, so there exist $T_1, T_2$ such that $T_1 Q_1 + T_2 Q_2 = 1$. Hence,
  $
  tilde(P)/Q = (tilde(P) (T_1 Q_1 + T_2 Q_2))/(Q_1 Q_2) = (tilde(P) T_1)/Q_2 + (tilde(P) T_2)/Q_1.
  $
]

#theorem[
  Let $P, Q$ be polynomials such that $Q(x) = product (x - a_i)^(d_i)$ (over $CC$), then there exists a polynomial $R(x)$ and coefficients $c_(i j)$, $(1 <=j <= d_i)$ such that
  $
  P(x)/Q(x) = R(x) + sum_i sum_(j=1)^d_i c_(i j)/(x - a_i)^j
  $
]

#proof[
  From division with a remainder we get that $P(x) = R(x) Q(x) + tilde(P)(x)$ where $deg tilde(P) < deg Q$. So,
  $
  P/Q = R + tilde(P)/Q.
  $
  Denote $Q_i = (x - a_i)^(d_i)$. Then, from the lemma $tilde(P)/Q = sum S_i/Q_i$. We can sasume that $deg S_i < deg Q_i$. Thus,
  $
  S_i/Q = S_i/(x - a_i)^(d_i)
  $
  We'll write $S_i$ as
  $
  S_i = sum_(j=0)^(d_i - 1) tilde(c_(i j)) (x - a_i)^j.
  $
  So
  $
  S_i/Q_i = sum_(j=0)^(d_i - 1) tilde(c_(i j)) 1/(x - a_i)^(d_i - j) = sum c_(i j) 1/(x - a_i)^(d_i - j)
  $
  where $c_(i j) = tilde(c_(i j)) dot (d_i - j)$. \
  // TODO: What?
]

=== Examples

#example[
  $
  (x^2 + 7)/(x^3 - x) = A/x + B/(x-1) + C/(x+1)
  $
  We'll find $A, B, C$:
  $
  x^2 + 7 = A (x^3 - 1) + B (x^2 + x) + C (x^2 - x)
  $
  which gives $A = -7, B = 4, C = 4$. And so
  $
  integral (x^2 + 7)/(x^3 - x) dd(x) = -7 log x + 4 log (x - 1) + 4 log (x + 1) + C.
  $
]

// TODO: There were more examples

#example[
  $
  integral R(sin x, cos x)
  $
  we'll use $t = tan x/2$. Which gives
  $
  sin x = 2 sin x/2 cos x/2 = 2 tan x/2 cos x/2 &= 2 tan x/2 dot (cos^2 x/2)/(sin^2 x/2 + cos^2 x/2) \
  &= 2 tan x/2 dot 1/(tan^2 x/2 + 1) = (2t)/(t^2 + 1).
  $
  And
  $
  cos x = cos^2 x/2 - sin^2 x/2 = (cos^2 x/2 - sin^2 x/2)/(cos^2 x/2 + sin^2 x/2) = (1 - tan^2 x/2)/(1 + tan^2 x/2) = (1 - t^2)/(1 + t^2).
  $
  And $x = 2 arctan t, dd(x) = 2/(1 + t^2) dd(t)$. So, 
  $
  integral dd(x)/(1 + sin x)
  $
  can be solved as
  $
  integral 1/(1 + (2t)/(t^2 + 1)) dot 2/(1 + t^2) dd(t) = integral 2/(1 + 2t + t^2) dd(t) = integral 2/(t + 1)^2 dd(t) = -2/(1 + t) + C = -2/(1 + tan x/2) + C.
  $
]

== The Riemann Integral

#definition[
  A partition of an interval $[a, b]$ is a collection of points $a_0 < a_1 < ... < a_n$ such that $a_0 = a$ and $a_n = b$.
]

#definition[
  A function $f: [a, b] -> RR$ is called Riemann integrable with an integral $I$ if for every $epsilon > 0$ there exist $delta > 0$ such that for every partition for which $a_j - a_(j-1) < delta$ for every $0 <= j <= n$ and $t_j in [a_(j-1), a_j]$:
  $
  abs(sum_(j=1)^n (a_j - a_(j-1)) f(t_j) - I) < epsilon .
  $
]

#example[
  The function
  $
  f(x) = cases(
    1 &quad x in QQ,
    0 &quad x in.not QQ
  )
  $
  defined on $[0, 1]$ is not Riemann integrable since for every partition we can choose $t_j in QQ$ and then the sum would be 1 and we can choose $t_j in.not QQ$ and then the sum would be 0.
]

#definition[
  Suppose $a_0 < a_1 < ... < a_n$ is a partition. We define
  $
  overline(S) = sum (a_j - a_(j-1)) dot sup_([a_(j-1), a_j]) f \
  underline(S) = sum (a_j - a_(j-1)) dot inf_([a_(j-1), a_j]) f \
  $
  where $overline(S)$ is called the upper Darboux sum and $underline(S)$ is called the lower Darboux sum. \
  Note that every Riemann sum in a partition is between $underline(S)$ and $overline(S)$. \
  Also note, that if we add points to the partition, $underline(S)$ increases and $overline(S)$ decreases.
]

#theorem[
  Every continuous function in $[a, b]$ is Riemann integrable.
]

#proof[
  We'll show that for every $epsilon > 0$, there exists $delta > 0$ such that if $a_j - a_(j-1) < delta$ then $overline(S) - underline(S) < epsilon$. From that it will follow that if there exist two partitions $a_j - a_(j-1) < delta$ and $a'_j - a'_(j-1) < delta$ then $abs(underline(S) - underline(S')) < epsilon$ and $abs(overline(S) - overline(S')) < epsilon$. We'll take a partition that contains both of them and $overline(S''), underline(S'') in [underline(S), overline(S)]$ and $overline(S''), underline(S'') in [underline(S'), overline(S')]$.

  For every $epsilon > 0$ there exists $delta >0$ such that
  $
  abs(x_1 - x_2) <= delta => abs(f(x_1) - f(x_2)) <= epsilon/(b-a)
  $
  since every continuous function is uniformly continous in an interval. If $I$ is an interval with length $delta >= 0$, then $sup_I f - inf_I f <= epsilon/(b - a)$. If a partition is satisfies $a_j - a_(j-1) <= delta$, then
  $
  sum (a_j - a_(j-1)) dot sup_[a_(j-1), a_j] f - sum (a_j - a_(j-1)) dot inf_[a_(j-1), a_j] f <= sum (a_j - a_(j-1)) dot epsilon/(b-a) = epsilon.
  $
]
