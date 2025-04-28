> Check the following facts on convergence of measures in $P[0,1]$
> 1. $\mu_n\to \lambda\iff (\forall\;t\in[0,1])\;\mu_n([0,t])\to t$
> 2. $\mu_n\to\mu\iff(\forall\;k\geq1)\;\int_0^1x^kd\mu_n\to\int_0^1x^kd\mu$ 
> Does 2. hold also for measures on $(0,1)$?

1\. 
$\mu_n\to \lambda\implies (\forall\;t\in[0,1])\;\mu_n([0,t])\to t$ 
I can chose $g=\chi_{[0,t]}$ in the definition of convergence. Then 
$$t=\int_0^1\chi_{[0,t]} d\lambda\leftarrow \int_0^t\chi_{[0,t]}d\mu_n=\mu_n([0,t])$$

$\mu_n\to \lambda\impliedby (\forall\;t\in[0,1])\;\mu_n([0,t])\to t$ 
Take any $g\in C_b(X)$.  I can approximate it as a sequence of simple (with a set of values that is finite) functions $0\leq s_1\leq s_2\leq ...$ such that $\lim s_i=g$. Then I use that fact that $\mu_n([0,t])\to t$ to change integrals 
$$\int_0^1a_i\chi_{[s_i,t_i]}d\mu_n=\int_0^1a_i\chi_{[0, t_i]}d\mu_n-\int_0^1a_i\chi_{[0, s_i]}d\mu_n\to a_t (t_i-s_i)=\int_0^1a_i\chi_{[s_i, t_i]}d\lambda.$$

2\. 
Implication $\implies$ is quite trivial. So the tricky part is to show $\impliedby$

Can I just use Stone-Weierstrass and approximate any continuous $g$ by polynomials?

Does 2. hold? probably no? if i take $\mu=\lambda$, $\mu_n=\lambda|(\frac{1}{n}, 1)\cdot \frac{n}{n-1}$ and then function $\frac{1}{x}$? 