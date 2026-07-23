#import "@local/math-homework-template:0.1.0": *

// #show: doc => note(doc, "Real Analysis - Semester B")

// == Laplace Method

// TODO: Add this


== Function Series

#theorem[Weirstrass][
  Assume $u_k$ is a sequence of function such that $abs(u_k (x)) <= M_k$ for each $k$ and $sum M_k < infinity$. Then $sum u_k (x)$ converges uniformly.
]

#proof[
  It is easy to see that $sum u_k (x)$ converges point-wise and $abs(sum_n^infinity u_k (x)) <= sum_n^infinity M_k$.
]

#conclusion[
  Assume $sum a_n x^n$ converges in $x = x_0$. Then it converges for every $abs(x) < abs(x_0)$ and converges uniformly on every $[-a, a]$, $a < abs(x_0)$.
]

#proof[
  $a_n x^n -> 0$ so for every $abs(x) <= a$
  $
  abs(a_n x^n) <= abs(a_n) a^n <= abs(a_n x_0^n) abs(a/x_0)^n <= C abs(a/x_0)^n.
  $
]

#theorem[][
  We'll denote $mu = limsup abs(a_n)^(1\/n)$.

  - If $mu = 0$, the series $sum a_n x^n$ converges for every $x$.

  - If $0 < mu < infinity$, the series converges for every $abs(x) < 1/n$ and diverges for every $abs(x) > 1/mu$.

  - If $mu = a$, the series converges only when $x = 0$.

  We call $R = 1/u$ the convergence radius.
]

#proof[
  For every $epsilon > 0$ there exits $n_0$ such that for every $n >= n_0$, $abs(a_n) <= (mu + epsilon)^n$ if $abs(x) < 1/mu$. We'll choose $epsilon$ such that $t = abs(x) (mu + epsilon) <= 1$ and then $abs(a_n x^n) < t^n$ for every $n >= 0$ so the series converges. \
  If the series converges $a_n x^n -> 0 => abs(x) < 1/mu$ because for every $epsilon$ theree exits a sequence $n_k$ such that $abs(a_n_k)^(1/(n_k)) >= mu - epsilon$ if $abs(a_n_k x^(n_k)) >= abs((mu - epsilon) x^(n_k)), 1 < x(mu - epsilon)$.
]

#example[
  Consider the series $sum x^n/n!$. We'll calculate $R$. // TODO: Complete this 
]

#example[
  Consider the series $sum x^n/n^s$. // TODO: Complete this
]

#problem[
  #enum(
    [
      Assume $R > 0$. Show that $(f(x) - (a_0 + a_1 x + ... + a_n x^n))/x^(n+1) -> a_(n+1)$.
    ],
    [
      Let $f, g$ be functions, $R_f, R_g > 0$. Assume $f(x_n) = g(x_n)$ for some sequence $x_n -> 0$. Show the series are equal.
    ],
    numbering: "a)"
  )
]

#theorem[Abel][
  Assume $sum a_n$ converges. Then
  $
  lim_(x->1-0)  sum a_n x^n = sum a_n.
  $
]

#proof[
  Let $S_n = sum_(j=1)^(n) a_j$. We'll use summation by parts:
  $
  sum_(0)^(N) a_n x^n &= sum (S_n - S_(n-1)) x^n \
  &= sum S_n (x^n - x^(n+1)) + S_N x^n \
  &= (1 - x) sum S_n x^n + S_N x^n. \
  $
  Thus
  $
  sum a_n x^n = (1 - x) sum S_n x^n \
  //sum a_n x^n = (1 - x) sum S_n x^n \
  $
  
  // TODO: Complete this
]
