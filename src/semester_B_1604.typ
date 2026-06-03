#import "@local/math-homework-template:0.1.0": *

== Definition

#definition[Indefinite Integral][
  Let $f: I -> RR$. We say that $F: I -> RR$ is an #index[Antiderivative] antiderivative or an indedfinite integral of $f$, if $F' = f$.
] <def:integral>

#proposition[
  If $F_1, F_2$ are two antiderivatives of $f$, then $F_1 - F_2$ is constant.
]

*Notation:* $integral f(x) dd(x) = F(x) + C$.

// *TODO*

#problem[
  Prove: 
  $
  integral dd(x)/(x^2 - a^2) = 1/(2a) log (x - a)/(x + a) + C
  $
  where $plus.minus a in.not I$.
]

== Change of Variables

#theorem[Change of Variables][
  If $F$ is an antiderivative of $f$ on $I$ and $phi: RR -> I$ /*Maybe not $RR$?*/ is a differentiable function, then $F compose phi$ is an antiderivative of $(F' compose phi) compose phi'$ on $I$,
  $
  integral f(phi(y)) phi' (y) dd(y) = F(phi(y)) + C.
  $
] <thm:variables>

// TODO: Add proof (maybe not from the notes)

#example[
  $
  integral dd(x)/(x(1 + log^2 x)), phi(x) = log x space (x > 0) \
  => integral phi'(x) dot 1/(1 + phi(x)^2) dd(x) = arctan(log x) + C 
  $
  since
  $
  (integral 1/(1+y^2) dd(y) = arctan y + C)
  $
]

#problem[Evaluate $integral e^x/(1 + e^2x) dd(x)$]

#problem[Evaluate $integral (cos x)/(1 + sin^2 x) dd(x)$]

#problem[Evaluate $integral tan x dd(x)$]

#theorem[
  Suppose $x = phi(y)$ is an invertible function and its inverse is $y = psi(x)$, and suppose that $F(y) = integral f(phi(y)) dot phi'(y) dd(y)$. Then, $integral f(x) dd(x) = F(psi(x)) + C$.
]

#proof[
  First, we know that $F' = (f compose phi) dot phi'$. Then,
  $
  (F compose phi)' = (F' compose psi) (phi'' compose psi) dot psi' = F' compose psi = f compose psi compose phi = f.
  $
  // *(TODO: Fix this)*
]

#example[
  We'll evaluate
  $
  integral sqrt(1 - x^2) dd(x).
  $
  Define $x = sin y = phi(y)$, so $phi'(y) = cos y$. Then,
  $
  integral underbrace(sqrt(1 - sin^2 y), f compose phi) underbrace(cos y, phi') dd(y) = integral cos^2 y dd(y) &= integral 1/2 (1 + cos 2 y) dd(y) \
  &= 1/2 y + 1/4 sin 2 y+ C \
  &= 1/2 y + 1/2 sin y cos y + C
  $
  Thus,
  $
  integral sqrt(1 - x^2) dd(x) = 1/2 arcsin x + 1/2 x sqrt(1 - x^2) + C.
  $
]

#problem[Evaluate $integral sqrt(1 + x^2) dd(x)$]

#problem[Evaluate $integral sqrt(a^2 - x^2) dd(x)$]

#problem[Evaluate $integral dd(x)/(1 + sqrt(x))$]

== Integration By Parts

#theorem[
  If $f, g$ are differentiable functions, then 
  $
  integral f g' dd(x) = f g - integral f' g dd(x).
  $
]

#example[
  $
  integral log x dd(x) = integral (x)' log x dd(x) = x log x - integral x dot (log x)' dd(x) = x log x + C.
  $
]

#problem[Evaluate $integral x^3 log x dd(x)$.]

#problem[Evaluate $integral arctan x dd(x)$.]

#problem[Evaluate $integral x cos x dd(x)$.]

#problem[Evaluate $integral x e^x dd(x)$.]

#problem[Evaluate $integral x^m e^(-x) dd(x)$.]

#example[
  $
  &integral (log x)/x dd(x) = integral log x dot (log x)' dd(x) = log^2 x - integral 1/x log x dd(x) \
  &=> integral (log x)/x dd(x) = 1/2 log^2 x + C.
  $
]
