>Let $X$ be a separable metrizable space. Check that if $\mu,\nu\in\mathcal{P}(X)$ agree on some base closed under finite unions, then $\mu=\nu$. In particular, $|\mathcal{P}(X)|=\mathfrak{c}$ for $|X|>1$. 

Let $X$ be S.M. and $\mathcal{B}$ be the base of $X$ closed under finite unions.

The goal is to show that 
$$(\forall\;\mu,\nu\in\mathcal{P}(X))(\mu|B=\nu|B\implies\mu=\nu.$$

Define $\mathcal{A}=\{A\in Bor(X)\;:\;\mu(A)=\nu(A)\}$. 

**Lemma 1.** Every open set is a countable union of open elements from our basis $\mathcal{B}$.
from topology ($X$ is metrisable then $X$ is separable $\iff$ $X$ is $2^\omega$ countable $\iff$ $X$ is Londeloff)
$\square$ 

**Lemma 2.** The family $\mathcal{A}$ is a $\sigma$-algebra.
$X\in\mathcal{A}$, complements, $A_n\uparrow A$ are easy

the least trivial part are trivial unions

We know that $\mathcal{B}\subseteq\mathcal{A}$, so by $A_n\uparrow A$ all open sets are in $\mathcal{A}$. By complements, also closed sets are in $\mathcal{A}$. 
Fix $\varepsilon>0$ and take any $A,B\in\mathcal{A}$. Then by regularity of $\mu$ there exists $U_A$, $F_A$ $U_B$, $F_B$ such that 
$$F_A\subseteq A\subseteq U_A$$
and $\mu(F_A - U_A)<\frac{\varepsilon}{2}$. Repeat for $B$. 
Notice that $U_A-F_A=U_A\cap F_A^c$. 
There is inclusion
$$F_A\cup F_B\subseteq A\cup B\subseteq U_A\cup U_B$$
and we want to apply $\mu$ and $-\nu$ to it to obtain
$$\mu(F_A\cup F_B)\leq \mu(A\cup B)\leq \mu(U_A\cup U_B)$$
$$-\nu(U_A\cup U_B)\leq -\nu(A\cup B)\leq-\nu(F_A\cup F_B)$$
Adding sides to each other:
$$\mu(F_A\cup F_B)-\nu(U_A\cup U_B)\leq \mu(A\cup B)-\nu(A\cup B)\leq \mu(U_A\cup U_B)-\nu(F_A\cup F_B)$$
which is equivalent to saying that
$$|\mu(A\cup B)-\nu(A\cup B)|\leq \mu(U_A\cup U_B)-\mu(F_A\cup F_B)\leq \varepsilon$$
$\square$

$$\mathcal{B}\subseteq\mathcal{A}\implies\sigma(\mathcal{B})\subseteq\sigma(\mathcal{A})$$
Let $\mathcal{T}$ be a family of open sets. Lemma 1. implies that $\mathcal{T}\subseteq\sigma(\mathcal{B})$. 
$$Bor(X)\subseteq \sigma(\mathcal{T})\subseteq\sigma(\sigma(\mathcal{B}))=\sigma(\mathcal{B})\subseteq\sigma(\mathcal{A})=\mathcal{A}\subseteq Bor(X)$$
which implies that $Bor(X)=\mathcal{A}$. 

**Part 2:** $|\mathcal{P}(X)|=\mathfrak{c}$
$\geq$ 
Take two different $x,y\in X$.. 
$$|\{t\delta_x+(1-t)\delta_y\;:\;t\in[0,1]\}|=\mathfrak{c}$$
$\leq$
GOOGLE DRIVE