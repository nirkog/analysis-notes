#import "@local/math-homework-template:0.1.0": *

#align(title[Infinite Series], center)

= Definition

#underline([Definition:]) Let $(a_n)$ be a sequence, and $S_n = sum_(i=1)^n a_i$ for all $n in NN$. We say the the infinite series $sum_(n=1)^infinity a_n$ #emph([converges]) if $S_n$ converges.

#underline([Note:]) It is clear that if $sum_(n=1)^infinity a_n$ converges, then $a_n -> 0$.

= Algebraic Properties of Series

*TODO*

= Cauchy Criterion for Series

#underline([Theorem:]) The series $sum a_k$ converges if and only if, given $epsilon > 0$, there exists an $N in NN$ such that whenever $n > m >= N$ it follows that
$
abs(a_(m+1) + ... + a_n) < epsilon.
$
#underline[Proof:] Observe that
$
abs(s_n - s_m) = abs(a_(m+1) + ... + a_n)
$
and apply the Cauchy Criterion for sequences.

= Positive Series

Let $(a_n)$ be a sequence such that $a_n >= 0$ for every $n in NN$. Then, if $S_n$ is bounded $sum a_n < infinity$ and if it is not than $sum a_n = + infinity$.

#underline([The Comparison Test:]) If $0 <= a_n <= b_n$, an $sum b_n < infinity$ then $sum a_n < infinity$. \
#underline([In particular:]) If $a_n <= C a ^n$ for some $C > 0, 0 < a < 1$ then $sum a_n < infinity$.

=== What if we can't compare to some $sum b_n$?

#underline([Cauchy Condenseation:]) $sum a_n < infinity$ if and only if $sum 2^n a_(2^n) < infinity$.

#underline([Proof:]) *TODO*

= Abosolute Convergence

#underline([Definition:]) A series $sum a_n$ #emph([converges absolutely]) if $sum abs(a_n)$ converges. On the other hand, if $sum a_n$ converges but $sum abs(a_n)$ does not, then we say that $sum a_n$ #emph([converges conditionally]).

#underline([Theorem:]) If $sum abs(a_n)$ converges, then $sum a_n$ converges. \
#underline([Proof:]) $S_n$ is a Cauchy sequence. $abs(S_n - S_m) <= abs(a_(m + 1)) + ... + abs(a_n) = sum_(i=m+1)^n abs(a_i) <= epsilon$.

== Leibnitz Method (The Alternating Series Test)

#underline([Therorem:]) If $a_n arrow.br 0$ then $sum -(1)^n a_n$ converges. \
#underline([Proof:]) *TODO*

#underline([Theorem:]) *(Dirichlet - Abel's method of partial sums)* if $a_n arrow.br 0$ and $b_n$ has bounded partial sums, that is $abs(sum^m b_n) < M$, then $sum a_n b_n$ converges. \
#underline([Proof:]) *TODO*

= Ratio Test

#underline[Theorem:] Suppose $(a_n)$ is a sequence such that
$
L = lim_(n->infinity) abs(a_(n+1)/a_n).
$
Then:
- If $L > 1$, the series $sum a_n$ diverges.
- If $L < 1$, the series $sum a_n$ converges absolutely.

#underline[Proof:] *TODO*

= Rate of Convergence

*TODO (some examples)*

= Permutations

#underline([Theorem:]) (Dirichlet) if $sum a_n$ converges absolutely, then for every permutation $sigma: NN -> NN$, $sum a_(sigma (n))$ converges and $sum a_(sigma (n)) = sum a_n$. \
#underline([Proof:]) *TODO*

#underline([Theorem:]) (Riemann) If $sum a_n$ converges conditionally then for every $L in RR union {-infinity, + infinity}$ there exists a permutation $sigma : NN -> NN$ such that $sum a_(sigma (n)) = L$. \
#underline([Proof:]) *TODO*

= Cauchy Products

#underline([Definition:]) The Cauchy product is defined as 
$
(sum a_n) (sum b_m) = sum_l (sum_(n + m = l) a_n b_m).
$

#underline([Theorem:]) #emph[(Cauchy)] If $sum a_n, sum b_n$ converge absolutely then the Cauchy product converges to the product of the limits. \
#underline([Proof:]) *TODO*

#underline([Theorem:]) #emph[(Mertens)] If $sum a_n$ converges absolutely and $sum b_n$ converges, then the Cauchy product converges to the product of the limits. \
#underline([Proof:]) *TODO*

*TODO (Some more stuff on Cauchy products)*

= General Things to add

- Algebraic Properties of Series
- Examples (Geomteric series, look through notes and Understanding Analysis)
