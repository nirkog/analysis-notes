#import "@local/math-homework-template:0.1.0": *

// #show: doc => note(doc, "Real Analysis - Semester B")

#theorem[][
  Let $mu: cal(J) -> RR$, where $cal(J)$ is the set of Jordan measurable sets in $RR^d$, such that $mu$ satisifes:

  #enum(
    [
      $mu(A union.plus B) = mu(A) + mu(B)$ for every $A, B in cal(J)$.
    ],
    [
      For every $A in cal(J), x in RR^d$, $mu(A + x) = mu(A)$.
    ],
    [
      $mu [0, 1]^d = 1$
    ],
    numbering: "(1)"
  )

  Then, $mu$ is the Jordan measure.
] 

#proof[
  // TODO: Complete the proof
]

#conclusion[
  $"Vol"_d$ is invariant to rotations.
]

#conclusion[
  If $mu$ satisfies (1) and (2) and $A in cal(J)$ has positive volume then $mu = mu(A)/("Vol"_d (A)) dot "Vol"_d$.
]

// TODO: Add reason the above conclusion

#conclusion[
  Assume $D$ is a rotation function. Then for every $E in cal(J)$, $"Vol"_d (D(E)) = "Vol"_d (E)$.
]

#proof[
  $mu(E) = "Vol"_d (D(E))$ satisfies (1) and (2) and $mu(B_d (0, 1)) = "Vol"_d (B(0,1))$ so according to the above conclusion, $mu = "Vol"_d$.
]

#theorem[][
  Assume $f in C(Q)$, where $Q$ is a hyperrectangle. Then, there exists $t in Q$ such that $integral_Q f(x) dd(x) = f(t) dot "Vol"_d Q$.
]

#proof[
  Notice that 
  $
  min f dot "Vol"_d Q <= integral f(x) dd(x) <= max f dot "Vol"_d Q,
  $
  and from the Mean Value Theorem we get the result.
]

#theorem[Fubini][
  Assume $f: Q times Q' -> RR$, where $Q, Q' subset.eq RR^d$ are hyperrectangles, and $f$ is Rieman integrable. Then
  $
  integral.double_(Q times Q') f(x, x') dd(x) dd(x') = integral_Q (integral_Q' f(x, x') dd(x)) dd(x') = integral_Q' (integral_Q f(x, x') dd(x)) dd(x').
  $
  That means the integral $integral_Q' f(x, x') dd(x')$ exists for every $x$ except a set the has measure 0 and there we can define it arbitrarily. // TODO: ??
]

#proof[
  We'll define
  $
  overline(integral) f(x) dd(x) = inf overline(S), quad underline(integral) f(x) dd(x) = sup underline(S) \
  overline(I) (x) = overline(integral_Q') f(x, x') dd(x), quad underline(I) (x) = underline(integral_Q') f(x, x') dd(x).
  $
  We'll show that
  $
  ast.op.o ast.op.o integral_Q' underline(I) (x) dd(x) = integral_q overline(I) (x) dd(x) = integral.double_(Q times Q') f(x, x') dd(x) dd(x').
  $
  From here will follow that
  - For every $x$ except a set that has measure 0, $integral_Q' f(x, x') dd(x')$ exists and 
    $
    overline(I) (x) = underline(I) (x), integral (overline(I) - underline(I)) dd(x) = 0.
    $
  - However we'll define $underline(I) <= phi <= overline(I)$, $phi$ is Riemann integrable and $integral_Q phi(x) dd(x) = integral.double_(Q times Q') f(x, x') dd(x) dd(x')$.
  
  We'll choose partitions $Pi$ of $Q$ and $Pi'$ of $Q'$, so $Pi times Pi'$ is a partition of $Q times Q'$. Then
  $
  // TODO: What is vol(Pi times Pi')
  underline(S) (f; Pi times Pi') &= sum_(i, j) inf_(q_i times q_j \ q_i in Q, q_j in Q') f dot "Vol"_(d times d) (Pi times Pi') \
  &= sum_i sum_j inf_(x in q_i) inf_(x in q_j) f(x, x') dot "Vol"_d q_i dot "Vol"_d q_j \
  &<= sum_i inf_(x in q_i) underbrace((sum_j inf_(x in q_j) f(x, x') dot "Vol"_d q_j), <= underline(I) (x)) dot "Vol"_d q_i \
  &<= sum_i inf_(x in q_i) underline(I) (x) dot "Vol"_d q_i = underline(S)(underline(I), Pi) \
  &<= overline(S) (overline(I), Pi) <= overline(S) (f, Pi times Pi').
  $
  From here we get $ast.op.o ast.op.o$.
]

#example[
  // TODO: Complete this
  // $
  // integral_(0)^(1)  { integral_(0)^(1)  (x - y)/(x + y)^3 dd(y)} dd(x) &= integral_(0)^(1)  { integral_(0)^(1) 2x/(x + y)^3 dd(y)} dd(x) \
  // $
]

#conclusion[
  If $f$ is continuous on $Q times Q'$, then
  $
  integral_Q (integral_Q' f(x, x') dd(x')) dd(x) = integral_Q' (integral_Q f(x, x') dd(x)) dd(x')
  $
]

#problem[
  Show that: $integral_(a)^(b) (integral_(c)^(d) sin x sin y dd(y)) dd(x) = 0 <=> b - a$  or $d - c$ are divisible by $2 pi$.
]

#problem[
  Show that if a rectangle is divided into smaller rectangles such that each smaller rectangle has an integer lengthed side then the original rectangle has an integer lengthed side.  
]

#proposition[
  Assume $f_1, f_2$ are continuous, $g$ is Riemann integrable and $E subset.eq RR^d$ is a closed, Jordan measurable set. Define $D = {(x, y) in E times RR | f_1 (x) <= g <= f_2 (x)}$. Then, $D$ is Jordan measurable and
  $
  "Vol"_(d+1) = integral_E (f_2 (x) - f_1 (x)) dd(x), quad integral_D g(x, y) dd(x) dd(y) = integral_E dd(x) { integral_(f_1 (x))^(f_2 (x)) g(x, y) dd(y) }.
  $
]

#proof[
  // TODO: Complete this
]

_Question._ Can we only assume that $f_1, f_2, g$ are integrable and not continuous and that $E$ is not necessarily closed.

// TODO: There is another problem here
