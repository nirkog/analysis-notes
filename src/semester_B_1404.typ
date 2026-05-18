#import "@local/math-homework-template:0.1.0": *

== Three definitions

#definition[Charts][
  (Poincare) A smooth $d$-surface is a set $M subset RR^N$ such that for every $x in M$, there exists a neighborhood $x in U inter M$ and a function $psi$ from an open set $G subset RR^d$ to U such that:
  + $psi$ is smooth ($C^1$)
  + $psi$ is a bijection
  + $"rk" dd(psi) = d$

  ($dd(psi): RR^d -> RR^N$, $psi "injective" <=> "rk" dd(psi) = d$)
] <def:chart>

*TODO: Example for the need of the third condition*

#definition[Co-Charts][
  For every $x in M$ there exists a neighborhood $x in U inter RR^N$ and a function $chi: U -> RR^(N-d)$ such that
  + $chi$ is smooth ($C^1$)
  + $M inter U = chi^(-1) (0) != emptyset$
  + $"rk" dd(chi) = N - d$, i.e. $dd(chi)$ is onto
] <def:cochart>

#definition[
  *TODO: Fill in*
  // A function $h: U -> RR^N$ w
] <def:third>

== Equivalence of the definitions

=== @def:chart $=>$ @def:cochart

#proof[
  $psi = (underbrace(psi_1, d), underbrace(psi_2, N- d))$. We assumed that $psi_1$ is invertible. So, $chi(x, y) = y - (psi_2 compose psi_1^(-1)) (x)$.
]

=== @def:chart $=>$ @def:third

#proof[
  $pdv(chi, y)$ is invertible: $h(x, y) = (x, chi(x, y))$.
]

#example[
  $
  x_1^2 + x_2^2 + x_3^2 = 1 \
  psi(vec(x_1, x_2)) = vec(x_1, x_2, sqrt(1 - x_1^2 - x_2^2)), d_x psi = mat(1, 0; 0, 1; -x_1/sqrt(1 - x_1^2 - x_2^2), -x_2/sqrt(1 - x_1^2 - x_2^2)) \
  psi_1(vec(x_1, x_2)) = vec(x_1, x_2), psi_2(vec(x_1, x_2)) = sqrt(1 - x_1^2 - x^2^2), psi_3(vec(x_1, x_2, x_3)) = x_3 - sqrt(1 - x_1^2 - x_2^2) \
  h(vec(x_1, x_2, x_3)) = vec(x_1, x_2, x_3 - sqrt(1 - x_1^2 - x_2^2)) \
  psi(vec(x_1, x_2)) = h^(-1)(vec(x_1, x_2, 0)) = vec(x_1, x_2, sqrt(1 - x_1^2 - x_2^2))
  $
]

#example[
  $
  y = x^2 \
  chi(x, y) = y - x^2, psi(x) = (x, x^2)
  $
]

== The tangent space

Let $M$ be a smooth $d$-surface in $RR^N$, $x in M$, we denote the tangent space $T_x M$

#definition[
  Let $psi: G -> U$ be a chart.
  $
  T_x M = { (d_psi(x) y) (h)} = Im (d_psi(x) y).
  $
]

#definition[
  Let $chi: U -> RR^(N-d)$ be a cochart.
  $
  T_x M = "Ker" d_x chi
  $
] <def:tan_cochart>

#definition[
  $
  T_x M = {h : "dist"(x + t h, M) = o(t)}
  $
]

#problem[Show that the three definitions are equivalent.]

#example[
  $
  S^2 subset RR^3 \
  psi(vec(x_1, x_2)) = vec(x_1, x_2, sqrt(1 - x_1^2 - x_2^2)), dd(psi) = mat(1, 0;0, 1; -x_1/sqrt(1 - x_1^2 - x_2^2), -x_2/sqrt(1 - x_1^2 - x_2^2)) \
  T_x M = "span"(...) = vec(x_1, x_2, x_3)^T \
  chi(x_1, x_2, x_3) = x_1^2 + x_2^2 + x_3^2 - 1, dd(chi) = (2 x_1, 2 x_2, 2 x_3)
  $
]

== Derivative of a manifold

#definition[
  Let $f : M -> RR$, $d_x f : T_x M -> RR$ and let $g = f compose psi$. Then,
  $
  d_phi(x) g^((h)) = (d_x f) (d_phi(x) psi)^((h))
  $
]

#problem[
  + The definition does not depend on the choice of chart $phi$
  + The chain rule
  + $u: (-epsilon, epsilon) -> M$, $u(0) = x$. Then, $f(u(t)) = f(u(0)) + t d_x f(u'(0)) + o(t)$.
]

== Another angle on Lagrance Multipliers

#underline[The problem:] $max {f: g_1 = g_2 = ... = g_n = 0}$. \
If $x$ - a local maximum point and $(d_x g_1, ..., d_x g_n)$  are linearly independent $=>$ $d_x f = sum lambda_i d_x g_i$. \
Notice that $chi = (g_1, ..., g_n)$ is a co-chart in a neighborhood of $x$. Hence, the intersection of ${g_1 = ... = g_n = 0}$ with a neighborhood of $x$ is a smooth manifold, $M$.

$
f(u(t)) = f(0) + t (d_x f) (u'(0)) + o(t), space (f: RR^N -> RR "is differentiable")

d_x f (u'(0)) = 0 => d_x f perp T_x M
$

From @def:tan_cochart, $T_x M = {d_x g_1, ..., d_x g_n} => d_x f = sum lambda_j d_x g_j$.

