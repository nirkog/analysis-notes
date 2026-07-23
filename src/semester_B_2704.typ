#import "@local/math-homework-template:0.1.0": *

// TODO: There is some proof here I didn't copy

== The Riemann Integral Continued

#theorem[Mean Value][
  If $f$ is continuous on $[a, b]$, then there exists $zeta in [a,b]$ such that
  $
  integral_a^b f(x) dd(x) = f(zeta) (b - a).
  $
]

#proof[
  Notice that
  $
  inf_[a,b] f dot (b-a) <= integral_a^b f(x) dd(x) <= sup_[a,b] f dot (b-a) \
  inf_[a,b] f <= (integral_a^b f(x) dd(x))/(b - a) <= sup_[a,b] f.
  $
  Thus, from the regular Mean Value Theorem we know that there exists some $zeta in [a, b]$ such that $f(zeta) = (integral_a^b f(x) dd(x))/(b - a)$.
]

#conclusion[
  If $f$ is continuous and $f >= 0$, then $integral_a^b f(x) dd(x) >= 0$.
]

#theorem[Newton-Leibnitz][
  Let $f in C[a, b]$, $F(x) = integral_a^x f(t) dd(t)$. Then, $F' = f$ .
]

#proof[
  From the definition and the Mean Value Theorem,
  $
  F(x + h) - F(x) = integral_x^(x+h) f(t) dd(t) = h dot f(zeta) \
  (F(x + h) - F(x))/h = f(zeta).
  $
  Hence, when $h -> 0$, $(F(x + h) - F(x))/h -> f(x)$.
]

#theorem[
  If $f in C[a, b]$ and $F' = f$, then
  $
  (*) integral_a^b f(x) dd(x) = F(b) - F(a) // TODO: Add notation
  $
]

#proof[
  Define
  $
  G(x) = integral_a^x f(t) dd(t).
  $
  Thus, $F' = G' = f$, so $F(x) = G(x) + C$. Since $(*)$ is true for $G$ it is true for $F$. // TODO: ???
]

#example[

  $
  integral_a^b x^n dd(x) &= cases(
    evaluated(x^(n+1)/(n + 1))_a^b quad n != 1,
    evaluated(log x)_a^b quad n = 1,
  ) \
  &= cases(
    (b^(n+1) - a^(n+1))/(n+1) quad n != 1,
    log(b/a) quad n = 1,
  )
  $
]

#theorem[1][
  If $f$ is differentiable, $g$ is continuously differentiable, then
  $
  integral_a^b f(x) g'(x) dd(x) = evaluated(f(x) g(x))_a^b - integral_a^b f'(x) g(x) dd(x).
  $
]

#theorem[2][
  Let $phi in C^1[a,b]$ such that $phi(alpha) = a, phi(beta) = b$, $f$ is integrable. Then,
  $
  integral_a^b f(x) dd(x) = integral_(alpha)^(beta) f(phi(t)) phi'(t) dd(t)
  $
]

#proof[
  Define
  $
  Phi(s) = integral_alpha^s f(phi(t)) phi'(t) dd(t), F(x) = integral_a^v f(y) dd(y).
  $
  // TODO: Continue this
]

#example[
  We'll evaluate
  $
  integral_0^(2 pi) sin^2 x dd(x)
  $
  by using the following change of variables: $y = 1/2 pi - x, x = 1/2 pi - y$ such that $sin x = cos y$. So,
  $
  integral_0^(2 pi) sin^2 x dd(x) &= integral_(pi/2)^(-(3 pi)/2) cos^2 y dd(y) \
  &= integral_(-(3 pi)/2)^(pi/2) cos^2 y dd(y) \
  &= integral_(-(3 pi)/2)^0 cos^2 y dd(y) + integral_0^(pi/2) cos^2 y dd(y)  \
  &= integral_(pi/2)^(2pi) cos^2 y dd(y) + integral_0^(pi/2) cos^2 y dd(y) \ 
  &= integral_0^(2pi) cos^2 y dd(y)
  $
  Now, notice that
  $
  2 integral_0^(2 pi) sin^2 x dd(x) = integral_0^(2 pi) sin^2 x dd(x) + integral_0^(2 pi) cos^2 x dd(x) = integral_0^(2pi) 1 dd(x) = 2 pi.
  $
  Thus, $integral_0^(2 pi) sin^2 x dd(x) = pi$.
]

#underline[Important property:] If $g, f$ are integrable then $f + g$ is also integrable and
$
integral_a^b (f(x) + g(x)) dd(x) = integral_a^b f(x) dd(x) + integral_a^b g(x) dd(x).
$
also
$
integral_a^b lambda f(x) dd(x) = lambda integral_a^b f(x) dd(x).
$

// TODO: Add reason

#problem[
  Let $U_n = integral_0^(pi/2) cos^n (x) dd(x)$. Show that if $n$ is odd then $U_n = (n-1)!!/n!!$, and if $n$ is even then $U_n = (n-1)!!/n!! dot pi/2$.
]

#problem[
  Show that $lim_(n->infinity) ( (2n)!!/(2n-1)!!) dot 1/n = pi$.
]

#problem[
  Show that $integral_0^(pi/2) log sin x dd(x) = -pi/2 log 2$.
]

== Calculating Areas and Volumes

=== Area Between Graphs

The area of the graph between $f(x)$ and $g(x)$ is $integral_a^b (f(x) - g(x)) dd(x)$.

#example[
  We can use this to calculate the area of the unit  circle. We get that the area is
  $
  2 integral_(-1)^1 sqrt(1 - x^2) dd(x) = 2 integral_(-pi/2)^(pi/2) cos^2 t dd(t) = integral_(-pi/2)^((3pi)/2) cos^2 t dd(t) = integral_0^(2pi) = pi.
  $
  Where we used the change of variables $x = sin t, dd(x) = cos t dd(t)$.
]

=== Volume of a Solid of Revolution

Define a 3-dimensional Solid of Revolution as the set ${ (x, y, z) : a <= x <= b, sqrt(y^2 + z^2) <= f(x)}$ for some function $f$. /* TODO: Is this accurate? */ Then, the volume is $integral_a^b pi f(x)^2 dd(x)$.

#example[Volume of a cone][
  $
  integral_0^h pi ((x R)/h)^2 dd(x) = (pi R^2)/h^2 integral_0^h x^2 dd(x) = (pi R^2 h^3)/(3 h^2).
  $
]

#example[Volume of a sphere][
  $
  integral_(-1)^1 (sqrt(1 - x^2)^2) pi dd(x) = integral_(-1)^1 pi (1 - x^2) dd(x) = 2 pi - (2 pi)/3 = (4 pi)/3.
  $
]

== Length of a Curve

#definition[
  A curve is a function $f: t -> (x(t), y(t))$ where $t in [0, b]$. 
]

#definition[
  A curve is *rectifiable* if for every $epsilon > 0$ there exists $delta > 0$ such that for every partition of the curve $a_0 < a_1 < ... < a_n$ such that $"dist"(a_i, a_(i+1)) < delta$, we get
  $
  abs(sum_(j=0)^n sqrt((y(a_j) - y(a_(j-1)))^2 + (x(a_j) - x(a_(j-1)))^2) - L) < epsilon
  $
  for some $L in RR$. // TODO: This is kind of a mess
]

#theorem[][
  If $(x(t), y(t))$ is continuously differentiable the the curve is rectifiable, and its length is $integral_a^b sqrt(x' (t)^2 + y' (t)^2) dd(t)$.
] <def:theorem1>

#proof[
  We'll prove the special case $x(t) = t$.
  $
  sum sqrt((a_j - a_(j - 1))^2 + (y(a_j) - y(a_(j-1)))^2) = sum (a_j - a_(j-1)) sqrt(1 + ())
  $
  // TODO: Continue this
]

#problem[
  Prove the general case of @def:theorem1
]

#example[
  Length of a circle, $y(t) = sqrt(1 - t^2), y' (t) = -2t dot 1/(2 sqrt(1 - t^2)) = -t/sqrt(1 - t^2)$.
  $
  integral_(-1)^1 sqrt(1 + y'(t)) dd(t) = integral_(-1)^1 sqrt(1 + t^2/(1-t^2)) dd(t)  = integral_(-1)^1 sqrt(1/(1 - t^2)) dd(t) = evaluated(arcsin t)_(-1)^1 = pi/2 - (- pi/2) = pi.
  $
]

#problem[
  Calculate the length of a parobla, $y = x^2/2$, $0 <= x <= x_0$.
]

#problem[
  Calculate the of an asteroid, $x^(2\/3) + y^(2\/3) = 1$.
]

// TODO: There was another example using a different parameterization of the circle or something
