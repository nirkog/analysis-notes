#import "@local/math-homework-template:0.1.0": *

// #show: doc => note(doc, "Real Analysis - Semester B")

== Improper Integrals 
Improper integrals are a generalization of the Riemann integrals for the following cases:
#parts(
  [
    The integral domain is not bounded
  ],
  [
    The function is not bounded
  ]
)

#example[
  $
  integral_0^infinity e^(-x) dd(x) = lim_(R->infinity) integral_0^R e^(-x) dd(x) = 1.
  $
]

#example[
  $
  integral_0^1 dd(x)/sqrt(x) = lim_(epsilon->0) integral_epsilon^1 dd(x)/(sqrt(x)) = lim_(epsilon->infinity) 2 - 2 sqrt(epsilon) = 2.
  $
]

#index[Improper Integral]
#definition[Improper Integral][
  The improper integral is defined as
  $
  "(Imp)" integral_a^b f(x) dd(x) = lim_(a'->a+0 \ b'->b-0) "(R)" integral_a'^b' f(x) dd(x), -infinity <= a < b <= infinity.
  $
]

#example[
  $
  integral_0^1 x^a dd(x) = lim_(epsilon->+0) integral_epsilon^1 x^a dd(x) = lim_(epsilon->+0) (1/(a+1) - epsilon^(a+1)/(a+1)) = 1/(a+1), a > -1.
  $
]

#example[
  $
  integral_1^infinity x^a dd(x) = lim_(R->infinity) (R^(a+1) - 1)/(a + 1) = -1/(a+1), a < -1.
  $
]

#problem[
  Does the following integral converge? 
  $
  integral_0^infinity dd(x)/(1 + (x sin x)^2)
  $
]

#problem[
  Assume $f >= 0, f arrow.br$ and assume $integral_0^infinity f(x) dd(x) < infinity$. Prove that $f(x) = o(1/x)$.
]

=== Properties

+ If $f$ is Riemann integrable on $[a, b]$ then
  $
  "(Imp)" integral_a^b f(x) dd(x) = "(R)" integral_a^b f(x) dd(x).
  $

  _Reason_: Notice that
  $
  abs(integral_a^a' f(x) dd(x)) <= (a' - a) sup abs(f) -->_(a'->a) 0 => integral_a'^b' f(x) dd(x) = integral_a^b f(x) dd(x) - integral_a'^a - integral_b^b' -> integral_a^b.
  $

+ If $F' = f$, then
  $
  "(Imp)" integral_a^b f(x) dd(x) = lim_(a'->a+0 \ b'->b-0) (F(b') - F(a')) = F(b-0) - F(a+0).
  $

+ _(Linearity)_
  $
  "(Imp)" integral_a^b (alpha f(x) + beta g(x)) dd(x) = alpha integral_a^b f(x) dd(x) + beta integral_a^b g(x) dd(x).
  $

  /* TODO: Make the sentence below make sense */
+ _(Integration by parts)_ Assume $f, g in C^1$ and the limits $lim_(b'->b-0) (f g) (b') = (f g) (b - ), (f g) (a + 0)$ exist. Then,
  $
  integral_a^b f' g dd(x) = evaluated(underbrace((f g), "limit"))_(a+0)^(b-0) - integral_a^b f g' dd(x).
  $

+ _(Change of Variables)_ Assume $integral_a^b f(x) dd(x)$ exists and $phi: [alpha, beta] -> [a, b], phi in C^1, phi(alpha + 0) = a, phi(beta - 0) = b$. Then,
  $
  integral_a^b f(x) dd(x) = integral_alpha^beta (f compose phi) phi' dd(x).
  $

== Gamma Function

#index[Gamma Function]
#definition[Gamma Function][
  $
  Gamma (x) = integral_0^infinity e^(-t) t^(x-1) dd(t), quad x > 0
  $
]

#proposition[
  The integral in the definition of the Gamma function converges.
]

#proof[
  We can represent the integral as the sum of two limits:
  $
  Gamma(x) = integral_0^infinity e^(-t) t^(x-1) dd(t) &= integral_0^1 + integral_1^infinity \
  &= lim_(epsilon->+0) integral_epsilon^1 + lim_(R->infinity) integral_1^R.
  $
  Now notice that for every $x > 0$
  $
  integral_epsilon^1 e^(-t) t^(x-1) dd(t) <= integral_epsilon^1 t^(x-1) dd(t) < C
  $
  for some constant C. And for the other limit, notice that for every $x > 0, t in [1, R]$, $e^(-t/2) t^(x-1) < C_x$ for some $C_x$. Then,
  $
  integral_1^R e^(-t) t^(x-1) dd(t) = integral_1^R e^(-t/2) e^(-t/2) t^(x-1) dd(t) <= C_x integral_1^R e^(-t/2) dd(t) <= C_x'
  $
  for some $C_x'$. Thus, the integral converges.
]

#proposition[
  For every $x > 0$
  $
  Gamma(x + 1) = x Gamma(x).
  $
  And thus $Gamma(x+1) = x!$.
]

#proof[
  We can use integration by parts to get that
  $
  Gamma(x+1) = integral_0^infinity e^(-t) t^x dd(t) = evaluated(-e^(-t) t^x)_0^infinity + integral_0^infinity e^(-t) x t^(x-1) dd(t) = x Gamma(x)
  $
]
