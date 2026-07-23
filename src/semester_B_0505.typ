#import "@local/math-homework-template:0.1.0": *

// #show: doc => note(doc, "Real Analysis - Semester B")

#theorem[Euler-Maclaurin][
  If $f in C^1[a, b], a, b in ZZ$ then
  $
  sum_(n=a+1)^b f(n) = integral_a^b f(x) dd(x) + 1/2 (f(b) - f(a)) + integral_a^b psi(x) f'(x) dd(x).
  $
  Where $psi(x) = x - floor(x) - 1/2$.
]

#proof[
  We can assume that $a = 0, b = 1$. Then
  $
  integral_0^1 psi(x) f'(x) dd(x) &= integral_0^1 (x-1/2) f'(x) dd(x) \
  &= evaluated((x - 1/2) f(x))_0^1 - integral_0^1 f(x) dd(x) \
  &= 1/2 f(1) + f(0) - integral_0^1 f(x) dd(x) \
  &= f(1) - 1/2 (f(1) - f(0)) - integral_0^1 f(x) dd(x) \
  $
]

#conclusion[
  Under the same assumptions
  $
  abs(sum_(n=a+1)^b f(n) - integral_a^b f(x) dd(x) - 1/2 (f(b) - f(a))) <= (integral_a^b abs(f'(x)) dd(x))/2.
  $
]

#example[
  $
  sum_1^N 1/k = integral_1^N 1/x dd(x) + 1/2 (1/N - 1) - O(integral_1^N dd(x)/x^2) = log N + O(1).
  $
]

#example[
  $
  sum_(k=1)^N k = integral_0^1 x dd(x) + N/2 = N^2/2 + N/2.
  $
]

#problem[
  Let $f in C^2$. Show that
  $
  sum_(n=a+1)^b f(n) = integral_a^b f(x) dd(x) + 1/2(f(b) - f(a)) + 1/2(f'(b) - f'(a)) + O(integral abs(f''(x)) dd(x)).
  $
]

== Swapping Limits and Integrals

#example[
  Let
  $
  f_n (x) = cases(
   n &quad 0 <= x <= 1/n,
   0 &quad ,
  )
  $
  Then $f_n -> 0$ but $integral f_n dd(x) = 1$ for every $n in NN$.
]

#theorem[][
  Suppose $f_n$ are Riemman integrable functions and $f_n arrows f$. Then $f$ is Riemann integrable and
  $
  integral_a^b f_n (x) dd(x) -> integral_a^b f(x) dd(x), \
  integral_a^y f_n (x) dd(x) arrows integral_a^b f(x) dd(x), quad y in [0, b].
  $
]

#proof[
  Let $P$ be a partition. Then
  $
  cases(
    overline(S) (f, P) <= overline(S) (f_n, P) + sup abs(f - f_n) (b - a) ",",
    underline(S) (f, P) >= underline(S) (f_n, P) - sup abs(f - f_n) (b - a)
  )
  $
  For every $n, epsilon > 0$ there exists $delta > 0$ such that if $P$ is $delta$-fine, then
  $
  overline(S) (f_n, P) <= epsilon/2.
  $
  We'll choose $n$ such that $abs(f - f_n) < epsilon/(n(b-a))$. And we get that
  $
  abs(overline(S) (f, P) - overline(S) (f_n, P)) <= epsilon
  $
  for every large $n$.

  /* TODO: Add uniformity */
]

#problem[
  Let $f_n in C^1, f'_n -> f', f_n (x_0) -> f(x_0)$. Show that $f_n arrows f$.
]

#example[
  We'll evaluate
  $
  integral_0^1 (1 - x/n)^n dd(x)
  $
  using $y = 1 - x/n$. So
  $
  integral_0^1 (1 - x/n)^n dd(x) = integral_(1-1/n)^1 y^n n dd(y) = n dot evaluated(y^(n+1)/(n+1))_(1-1/n)^1 = n/(n+1) (1 - (1 - 1/n)^(n+1)) = evaluated(e^(-x))_0^1 = 1 - 1/e.
  $
]

#theorem[][
  Assume $f_n: [a, b] -> RR$ Riemann integrable on all of $[a, c]$, $a < c < b$ and $f_n arrows f$ on all of $[a, c]$ and $abs(f_n) <= g, integral_a^b g(x) dd(x) < infinity$. Then
  $
  integral_a^b f_n dd(x) -> integral_a^b f(x) dd(x), quad integral_a^b abs(f(x)) dd(x) < infinity.
  $
]

#proof[
  Notice that
  $
  integral_a^c abs(f(x)) dd(x) <= integral_a^c abs(f_n (x)) dd(x) + integral_a^c abs(f(x)) dd(x) <= integral_a^b g(x) dd(x) + max_([a,c]) abs(f - f_n) (c - a).
  $
  For every $c$ there exists $n$ such that $max_[a,c] abs(f-f_n) <= 1/(c - a) <= integral_a^b g(x) dd(x) + 1$. Then
  $
  abs(integral_a^b f(x) dd(x) - integral_a^b f_n (x) dd(x)) &<= integral_a^c abs(f - f_n) dd(x) +  integral_b^c abs(f) dd(x) + integral_c^b abs(f_n) dd(x) \
  &<= max_[a,c] abs(f - f_n) (c - a) + underbrace(integral_c^b (abs(f) + g) dd(x), "bounded").
  $
  We'll choose $c$ such that $integral_c^b (abs(f) + g) dd(x) < epsilon/c$, so for $n$ large enough $max_[a,c] abs(f - f_n) < epsilon/(2 (c - a)).$
]

/* TODO: There is an example here */

#proposition[
  $
  Gamma(x + 1) = integral_0^infinity e^(-t) t^x dd(t) = (1 + o(1)) (x/e)^x sqrt(2 pi x).
  $
]

#proof[
  // TODO: Add
]
