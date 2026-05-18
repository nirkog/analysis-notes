#import "@local/math-homework-template:0.1.0": *
#import "@preview/physica:0.9.8": *

#show title: set text(weight: "medium")

#align(title("Several Variable Differential Calculus"), center) 

= Definition of Differentiablity

#underline("Definition:") Suppose $Omega subset RR^d$. A function $vec(f_1, dots.v, f_k) = F: Omega -> RR^k$ is differentiable at a point $x^* in Omega$ if there exists a linear map $T: RR^d -> RR^k$ (represented by $A in M_(k times d) (RR)$), such that
$
F(x) = F(x^*) + T(x - x^*) + o(abs(x - x^*)).
$
Denote $F'(x^*) = A$, $d F(x^*, h) = F'(x^*) dot h$ where $h in RR^d$.

= Partial Derivatives

Notice that for every $1 <= i <= k, 1 <= j <= d$, we have
$
f_i (x^* + t e_j) = f_i (x^*) + A_(i j) t + o(t).
$

We denote
$
pdv(f_i, x_j) =  A_(i j) = lr(dv(, t) |)_(t=0) f_i (x^* + t e_j),
$
which is the partial derivative.

#underline([Note:]) The partial derivatives may exist at a point, but the function might not even be continuous.

#underline([Theorem:]) $f: Omega -> RR$, $Omega subset RR^d$ is differntiable at a point $x^* in Omega$ if $pdv(f, x_i)$ exists and is continuous in a neighborhhod of $x^*$ for all $1 <= i <= d$ and $f'(x^*) = (pdv(f, x_1), ..., pdv(f, x_d))$.

#underline([Proof:]) *TODO*

#underline([Generalization:]) Let $h != 0 in RR^d$. The directional derivative is defined as
$
(partial_h f) (x^*) = lim_(t->0) (f(x^* + t h) - f(x^*))/t.
$

Note that if $f'(x^*)$ exists, then $(partial_h f) (x^*) = f'(x^*) dot h$.

#underline[Definition:] Let $f: Omega -> RR$. The gradient of $f$ at a point $x$ is
$
grad f (x) = vec(pdv(f, x_1), dots.v, pdv(f, x_d)) = (f'(x))^t.
$
The directional derivative can be expressed as $partial_h f = f'(x) dot h = iprod(grad f(x), h)$.

= Mean Value Theorem

#underline[Theorem:] Let $f: Omega -> RR$ be a differentiable function. Define $Omega in.rev [a, b] = {(1 - t) a + t b : 0 <= t <= 1}$. There exists a $c in [a, b]$ such that
$
f(b) - f(a) = f'(c) (b - a).
$
#underline[Proof:] *TODO*

#underline[Conclusion:] If $f: Omega -> RR$ is differentiable and $[a, b] subset Omega$ then
$
abs(f(b) - f(a)) <= norm(f'(c)) norm(b - a)
$

#underline[Definition:] $Omega$ is convex if for all $a, b in Omega$, $[a, b] subset Omega$. \
#underline[Theorem:] If $Omega$ is convex, then 
$
abs(f(b) - f(a)) <= sup norm(f') norm(b - a)
$
for all $a, b in Omega$.

#underline[Generalization:] If $f: Omega -> RR^k$ and $[a, b] subset Omega$, then there exists $c in [a, b]$ such that
$
underbrace(norm(f(b) - f(a)), in RR^k) <= underbrace(norm(f'(c))_op, k times d) underbrace(norm(b - a), in RR^d).
$

#underline[Conclusion:] If $F: Omega -> RR^k$ is differentiable, and $F' = 0$ and $Omega$ is convex, then $F$ is constant.
