#import "@local/math-homework-template:0.1.0": *

#show: doc => note(doc, "Real Analysis - Semester B")

== Differentiation Under The Integral Sign

#theorem[][
  Let $f: RR^d times RR -> RR$. Assume $pdv(f, t)$ is continuous in $x$, $E$ is a compact, Jordan measurable set. Then,
  $
  dv(,t) integral_E f(x, t) dd(x) = integral_E pdv(,t) f(x, t) dd(x).
  $
  That is, if $F(t) = integral_E f(x, t) dd(x)$, then $F'(t) = integral_E pdv(,t) f(x, t) dd(x)$.
]

#proof[
  Notice that
  $
  F(t + h) - F(t) = integral_E (f(x, t + h) - f(x, t) dd(x).
  $
  And according to the Mean Value Theorem,

  // TODO: Complete
]

#example[
  // TODO: Complete
]

#example[
  Let 
  $
  f(x, t) = cases(
   (x t^3)/(x^2 + t^2)^2 &quad x"," t != 0,
   0 &quad x = t = 0,
  ) space,
  F(t) = integral_(0)^(1)  f(x, t) dd(x).
  $
  Now, for $t != 0$,
  $
  F(t) = integral_(0)^(1) (t^3 x)/(x^2 + t^2)^2 dd(x) = integral_(t^2)^(1 + t^2)  t^3/2 dd(y)/y^2 = ev(-t^3/(partial y), t^2, t^2 + 1) = t^3 (1/t^2 - 1/(t^2 + 1)) = t/2 - t^3/(2(t^2 + 1)).
  $
  ($f(x, 0) = 0$). And so
  $
  F'(t) = 1/2 - (3 t^2 (t^2 + 1) - t^3 dot 4 t)/(2 (t^2 + 1)) => F'(0) = 1/2.
  $
  // TODO: Complete
]

#conclusion[
  //Assume $beta(t)$ is differentiable at a point $t_0$ and for every $t$ in the neighborhood of $t_0$
  
  // TODO: Complete
]

#proof[
  // TODO: Complete
]

#example[
  
]
