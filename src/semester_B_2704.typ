#import "@local/math-homework-template:0.1.0": *

// TODO: There is some proof here I didn't copy

#show: doc => note(doc, "Real Analysis - Semester B")

== The Riemann Integral Continued

#theorem[Mean Value][
  If $F$ is continuous on $[a, b]$, then there exists $zeta in [a,b]$ such that
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

== Calculating Areas

The area of the graph between $f(x)$ and $g(x)$ is $integral_a^b (f(x) - g(x)) dd(x)$.

#example[
  We can use this to calculate the area of the unit  circle. We get that the area is
  $
  2 integral_(-1)^1 sqrt(1 - x^2) dd(x) = 2 integral_(-pi/2)^(pi/2) cos^2 t dd(t) = integral_(-pi/2)^((3pi)/2) cos^2 t dd(t) = integral_0^(2pi) = pi.
  $
  Where we used the change of variables $x = sin t, dd(x) = cos t dd(t)$.
]

// TODO: Continue this
