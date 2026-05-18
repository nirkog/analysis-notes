#import "@preview/physica:0.9.8": *
// 24.3.26

#title([Tutorial 24.3.26])

= Convex Sets

#underline[Theorem (HB):] Let $Omega subset.eq  RR^d$ be a convex and closed set and let $x in.not Omega$, then there exists $l in RR^d$ such that
$
sup_(y in Omega) innerproduct(l, y) < innerproduct(l, x)
\ 
$

#underline[Definition:] Let $K subset.eq RR^d$, then the polar set of $K$ is
$
// TODO: Better syntax than circle
K^circle = {y in RR^d: innerproduct(y, x) <= 1 forall x in K}.
$

#underline[Theorem:] Let $K$ be a set. The polar set $K^circle$ is closed and convex. (Exercise)

#underline[Theorem:] Let $K$ b a closed and convex set such that $0 in K$. Then, $(K^circle)^circle = K$. \
#underline[Proof:] 1) $K subset.eq K^(circle circle)$ - *Complete* \
2) $K^(circle circle) subset.eq K$ - Assume that $K^(circle circle) subset.eq.not K$. Then, there exists $z in K^(circle circle)$ such that $z in.not K$. From HB, there exists an $l in RR^d$ such that 
$
sup_(x in K) innerproduct(l, x) < innerproduct(l, z).
$
We know that $0 in K$. Thus, $sup_(x in K) innerproduct(l, x) >= 0$ so $innerproduct(l, z) > 0$. Suppose $alpha = sup_(x in K) innerproduct(l, x)$. *Complete*

#underline[Exercise (Bonus):] Let $K subset.eq  RR^d$ convex and symmetric (if $x in K$, then $-x in K$). If $abs(K) > 2^d$, then there is a point in the lattice in $K$ (a point with integer coordinates).

= Convex Functions

== Yensen(?) Inequality (average case)

If $f: Omega -> RR$ convex then for all $x_1, ..., x_n in Omega$
$
f(1/n sum x_i) <= 1/n sum f(x_i)
$

#underline[Proof:] Induction.

*Complete* - Proof of AM-GM.
