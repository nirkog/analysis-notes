#import "@local/math-homework-template:0.1.0": *

// TODO: There is stuff in the notebook

#underline[Reminder:] $f$ is called half-continuous from below if $f(x) <= liminf _(y -> x) f(y)$. \
Equal - $f$ is a $sup$ of continuous functions. \
Equal - The epigraph of $f$ is closed.

$sup$ of linear functions (affine) is always convex. Is every convex $f$ a $sup$ of affine functions?

#theorem[
  Let $f: RR^d -> R union {+ infinity}$ convex, half-continuous from below. Then,
  $
  f(x) = sup{g(x) = l^t x + b | g <= f}.
  $
]

#proof[
  $>=$ is obvious. $<= - $ Let $y^* < f(x*)$ and we'll show that there exists $g <= f$ affine such that $g(x^*) = y^*$. From HB there exists $tilde(l) = (l, a) in RR^d times RR$. so
  $
  l^t x^*  + a y^* > l^t x + a y
  $
  for all $(x, y): y >= f(x)$. We claim that $a < 0$ (if $f != + infinity$). If $f(x) < + infinity$ and take $y -> + infinity$ $=>$ Not possible that $a > 0$. $a$ can't be $0$ as well since the inequality fails for $x = x^*$. We get that
  $
  y >= underbrace(- l^t/a x + (l^t/a x^* + y^*), g(x)), y >= f(x)
  $
]

#definition[
  Legendre transformation of $f$ is
  $
  f^*(l) = sup_x {l^t x - f(x)}
  $
]

Note:
- $f^*(l) + f(x) >= l^t x$
- $f^*$ is always convex, half-continuous from above.
- $f^(**) <= f$. If $f$ is convex, half-continuous from below then $f^(**) = f$. \
  #proof[
    For every $epsilon >0, x$ there exist $l, b$ such that
    $
    => f^*(l) = sup (l^t y - f(y)) <= -b \
    forall y f(y) >= l^t + b, underbrace(f(x) <= l^t x + b + epsilon, (a)). \
    f^(**) (x) = sup_(tilde(l)) (tilde(l)^t x - f^* (tilde(l))) >= l^t x - f^*(l) >= l^t x + b >= underbrace(f(x) - epsilon, "from (a)").
    $
  ]

#example[
  $f(x) = x^4/4$. $f^*(l) = sup_x{l x - x^4/4} = l^(4/3) - l^(4/3)/4 = 3/4 l^(4/3) = l^(4/3)/(4/3)$. Then,
  $
  x^4/4 + l^(4/3)/(4/3) >= l x

  sum x_i^4/4 + sum l_i^(4/3)/(4/3) >= sum l_i x_i.
  $
]

#theorem[
  Suppose $f$ is convex and differentiable at $x_0 in Omega$. Then,
  $
  f(x) >= f(x_0) + d_(x_0) f(x - x_0)
  $
]

#proof[
  Define $phi(t) = f((1-t) x_0 + t x)$ (convex and differentiable). Notice that
  $
  // phi'(0) = d_(x_0) f(x - x_0) \
  phi(t) <= (1-t) underbrace(phi(0), f(x_0)) + t underbrace(phi(1), f(x)) \
  underbrace(phi(t) - phi(0), t) <= f(x) - f(x_0) \
  $
  If we take $t-> +0$, we get
  $
  phi'(0) = d_(x_0) f(x - x_0).
  $
]

#theorem[
  Suppose $f$ is twice differentiable, $Omega$ is convex and open. Then
  $
  d_x^2 f >= 0 <=> f "is convex".
  $
]

#example[
  //TODO
  $ 
  f(x) = innerproduct(A x, x) \
  $
]
