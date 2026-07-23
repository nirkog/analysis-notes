#import "@local/math-homework-template:0.1.0": *

// #show: doc => note(doc, "Real Analysis - Semester B")

#theorem[Euler][
  $
  Gamma(x) = lim_(n->infinity) ((n-1)! n^x)/(x (x+1) ... (x + n - 1)) = lim_(n->infinity) (n! n^x)/(x (x + 1) ... (x + n)).
  $
]

#note-box[
  The limit on the righthand side exists for every $x != 0, -1, -2, ...$ and is a $C^(infinity)$ function of $x$.
]

#index[Stirling's Approximation]
#proof[
  #enum(
    [
      We want to show that
      $
      Gamma(x) = 
      $
    ],
    numbering: "(1)"
  )

  // TODO: Continue this
]

#proposition[Stirling][
  An approximation for the Gamma function:
  $
  Gamma(x) = (x/e)^x sqrt((2pi)/x) (1 + o(1)), n! = (n/e)^n sqrt((2pi)/n) (1 + o(1))
  $
  as $x -> infinity$.
  
  // TODO: Add proof for this
]

== Non-positive Integrals

#theorem[Cauchy][
  $"(imp)" integral_a^b f(x) dd(x)$ converges if and only if
  $
  forall epsilon > 0 space exists space hat(b) < b, hat(a) > a space forall space a_1, a_2 in (a, hat(a)), b_1, b_2 in (hat(b), b) abs(integral_(a_1)^(b_1) - integral_(a_2)^(b_2)) < epsilon.
  $
]

#conclusion[
  If $"(imp)" integral_a^b abs(f(x)) dd(x) < infinity$ then $"(imp)" integral_a^b f(x) dd(x) < infinity$ (Absolute divergence).
]

#example[
  $integral_1^infinity (sin x)/x^2 dd(x)$ converges absolutely since
  $
  integral_1^R abs(sin x)/x^2 dd(x) <= integral_1^R dd(x)/x^2 = 1 - 1/R -> 1.
  $
] 

#example[
  $integral_1^infinity (sin x)/x dd(x)$ doesn't converge absolutely. Notice that
  $
  integral_(2 pi n)^(2 pi (n + 1)) abs(sin x)/x dd(x) >= integral_(2 pi n + pi/4)^(2 pi n + (3 pi)/4) >= 1/sqrt(2) integral_(2 pi n + pi/4)^(2 pi n + (3 pi)/4) dd(x)/x >= 1/sqrt(2) dot pi/2 dot 1/(2 pi (n + 1)).
  $
]

#proposition[
  The integral
  $
  integral_1^infinity (sin x)/x dd(x)
  $
  converges.
]

#proof[
  $
  integral_1^R (sin x)/x dd(x) = evaluated(- (cos x)/x)_1^R + integral_1^R (cos x)/x^2 dd(x) = cos(1) + integral_1^R (cos x)/x^2 dd(x).
  $
  And since $integral_1^infinity (cos x)/x^2 dd(x)$ converges, the integral converges.
]

#example[
  // TODO: Fill in
]

#theorem[Abel-Dirichlet][
  Suppose $f$ is a conntinuous function, $g$ is a continuously differentiable, monotone function, then
  $
  "(a)" or "(b)" => "(imp)" integral_a^b f g dd(x) "converges"
  $
  where 
  #enum(
    [
      $integral_a^b f(x) dd(x)$ exists, $g$ is bounded.     
    ],
    [
      $integral_a^x f(y) dd(y)$ are bounded, $g(x) -> b$ when $x -> b$.
    ],
    numbering: "(a)",
    spacing: 1em
  )
]

#proof[
  We'll define $F(x) = integral_a^x f(y) dd(y)$. Then,
  $
  integral_a^x f(y) g(y) dd(y) = evaluated(F(y) g(y))_a^x - integral_a^x F(y) g'(x) dd(y).
  $
  Now, if condition (a) is true, then (This is incomplete)
  $
  F(y) -> F(b-0), g(y) -> g(b-0)
  // TODO: Fill in
  $
  If condition (b) is true, then $F$ is bounded and $F(x) g(x) -> 0$ when 
  // TODO: Continue this
]

#problem[
  Does the integral $integral_0^infinity sin(x log x) dd(x)$ converge?
]

== Series Evaluation

// TODO: Continue

#theorem[Integral Criterion][
  Let $f: [1, infinity] -> RR_+$ be a monotone decreasing function. Then
  $
  sum f(n) < infinity <=> integral_1^infinity f(x) dd(x) "converges".
  $
]

#proof[
  $
  f(n+1) <= integral_n^(n+1) f(x) dd(x) <= f(a)
  $
]

#example[
  $sum (sin sqrt(n))/n$.
]

#proposition[Euler][
  There limit
  $
  lim_(n->infinity) sum_1^n 1/k - log n = gamma > 0
  $
  exists.
]

#proof[
  // TODO: Add this
]

#problem[
  Show that $product_1^infinity (e^(1/n))/(1 + 1/n) = e^gamma$.
]

#proposition[
  Define
  $
  zeta (s) = sum_(n=1)^infinity 1/(n^s), quad s > 1.
  $
  Then,
  $
  lim_(s->1+0) (s-1) zeta(s) = 1 <=> (s -> 1+0) zeta(s) = (1 + o(1))/(s-1).
  $
]

#proof[
  $
  zeta(s) - integral_1^infinity 1/x^s dd(x) &= sum (1/n^s - integral_n^(n+1) 1/x^s dd(x)) \
  &= sum integral_n^(n+1) (1/n^s - 1/x^s) dd(x) \
  &= sum (1/n^s - 1/(n + 1)^s) = 1 \
  $
  Thus,
  $
  1/(s-1) <= zeta(s) <= 1/(s-1) => 1 <= zeta(s) (s - 1) <= 1 + (s - 1)
  $
]

#problem[
  Show that $zeta(s) = 1/(s-1) + gamma + o(1)$.
]
