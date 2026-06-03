#import "@local/math-homework-template:0.1.0": *

// #show: doc => note(doc, "Real Analysis - Semester B")

== Interesting Examples

#example[
  An integrable function but $F'$ is not Riemann integrable - 
  $
  F(x) = cases(
   x^2 sin 1/x^2 &quad x != 0,
   0 &quad x = 0,
  )
  $
  Notice that
  $
  (F(x) - F(0))/x -->_(x->0) 0
  $
  but
  $
  F'(x) = 2 x sin 1/x^2 - 2 x^2 dot 1/x^3 dot cos 1/x^2 = 2 x sin 1/x^2 - 2/x cos 1/x^2
  $
  which is not Riemann integrable.
]

/* TODO: The real name? */
#example[/*Notterre*/][
  $F$ is differentiable, $F'$ is bounded and not Riemann integrable.

]

// TODO: Continue examples (including the one above)

== Proof That $e$ Is Transcendental

#corollary[
  Assume $f$ is a polynomial, we'll denote $F = f' + f'' + ...$ . Then,
  $
  integral_0^Chi f(t) e^(-t) dd(t) = F(0) - e^(-Chi) F(x)
  $
]

#proof[
  $
  integral_0^Chi f(t) e^(-t) dd(t) &= evaluated(-f(t) e^(-t))_0^Chi + integral_0^Chi f'(t) e^(-t) dd(t) \
  &= evaluated(-f(t) e^(-t))_0^Chi + evaluated(f'(t) e^(-t))_0^Chi + integral_0^Chi f''(t) e^(-t) dd(t) \
  &= - sum f^((i)) (x) e^(-Chi) + sum f^((i)) (0)
  $
]

#theorem[][
  $e$ is transcendental, i.e. there exist no $a_j in ZZ$ (not all 0) such that $sum_0^m a_j e^j = 0$.
]

#proof[
  // TODO: Complete this
]

== The Integral Remainder of a Taylor Series

#proposition[
  Assume $f in C^(n+1)$. Then $f(x) - T_n (x) = 1/(n!) integral_a^x (x - t)^n f^((n+1)) (t) dd(t)$. (Which implies Lagrange).
]

#proof[
  We'll prove by induction. For the case $n = 1$ we get that
  $
  f(x) = f(a) + integral_a^x f'(t) dd(t) &= f(a) - evaluated((x - t) f'(t))_a^x + integral_a^x (x - t) f'(t) dd(t) \
  &= f(a) - (x - a) f'(a) + integral_a^x (x - t) f'(t) dd(t).
  $
  Now, assume that $f(x) - T_n (x) = 1/(n!) integral_a^x (x - t)^n f^((n+1)) (t) dd(t)$ and we get that
  $
  1/n! integral (x - t)^n f^((n+1)) (t) dd(t) &= -1/(n+1)! (x - t)^(n+1)  f^((n+1)) (t) + 1/(n+1)! integral (x - t)^(n+1) f^((n+2)) (t) dd(t) \
  &= 1/(n+1)! (x - a)^(n+1) f^((a + 1)) (a). /* TODO: Verify this */
  $
]
