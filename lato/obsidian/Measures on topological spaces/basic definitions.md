Given the space $X$, write $\mathbb{P}(X)$ (or as Plebanek - $P(X)$) for the family of all probability measures defined on $Bor(X)$. 

> [!tip] outer measure
> The outer measure $\lambda^*$ is defined for all $A\subseteq X$ as 
> $$\lambda^*(A)=\inf\{\lambda(V)\;:\;A\subseteq V, V\text{ measurable}\}$$

**Lemma.** If $A\subseteq\mathbb{R}$ is a measurable set, $0<\lambda(A)<\infty%, then for every $\varepsilon>0$ there is a nonempty interval $(a,b)$ such that 
$$\frac{\lambda(A\cap (a,b))}{b-a}>1-\varepsilon$$

> [!tip] density point
> $x\in\mathbb{R}$ is a density point of $A\subseteq\mathbb{R}$ if 
> $$\lim_{\delta\to 0}\frac{\lambda(A\cap (x-\delta, x+\delta))}{2\delta}=1$$

This means that very small strips around $x$ are basically full.
Almost every (everything except a set of measure zero) point of a measurable set is its density point.


> [!tip] Vitali cover
> A family $\mathcal{J}$ of nondegenerate closed intervals is a **Vitaly cover** of a set $A$ if
> $$(\forall\;x\in A)(\forall\;\varepsilon>0)(\exists J\in\mathcal{J})\;x\in J\;\land\;\text{diam}(J)<\varepsilon$$

This is a covering made out of arbitrary small sets.

> [!tip] Vitali theorem
> If $\mathcal{J}$ is a Vitali cover of $A$, then there exist pairwise disjoint sets $J_n\in\mathcal{J}$ such that 
> $$\lambda(A-\bigcup J_n)=0$$

## Cantor set $2^\mathbb{N}=\{0,1\}^\mathbb{N}$ 
**FACTS ABOUT CANTOR SET**
- is a compact space in product topology
- metrizable, e.g. $d(x,y)=\frac{1}{k}$, where $k$ is the first place where $x(k)\neq y(k)$, is a compatible metric
- zerodimensional, i.e. has a base of clopen sets
- $h:2^\mathbb{N}\to[0,1]$, $h(x)=\sum_{n=1}^\infty x(n)\cdot 2^{-n}$ is a contninuous surjection 
- *every compact metric space is a continuous image of the Cantor set*
- $2^\mathbb{N}$ with addition module $2$ on each coordinate is a *topological group*

 
> [!info] topology on $2^\mathbb{N}$
> Sets of the form
> $$[\phi]=\{x\in2^\mathbb{N}\;:\;x|I=\phi\}$$
> form a base of topology on $2^\mathbb{N}$


>[!tip] set determined by coordinates
>For $I\subseteq\mathbb{N}$ we say that $A$ is determined by coordinates in $I$, $A\sim I$, if
>$$(\forall\;x\in A)(\forall\;y\in2^\mathbb{N})\;x|I=y|I\implies y\in A$$

Equivalently, $A=\pi_I^{-1}(\pi_I(A))$, where $\pi_I:2^\mathbb{N}\to 2^I$ is the projection onto coordinates of $I$.


**Lemma.** $A\subseteq 2^\mathbb{N}$ is clopen $\iff$ $A\sim I$ for some $|I|<\infty$.

> [!tip]
> If $C\sim I$, we can write $C=C'\times 2^{\mathbb{N}-I}$ and put
> $$\nu(C)=\frac{|C'|}{|I|}.$$
> This is a well-defined measure on $Clop(2^\mathbb{N})$ and it extends to a measure on $Bor(2^\mathbb{N})=\sigma(Clop(2^\mathbb{N}))$.

>[!info] $\nu$ is the Haar measure
>The measure $\nu$ is the unique probability measure which is **translation invariant**, $\nu(B\oplus x)=\nu(B)$ for all $B\in Bor(2^\mathbb{N})$ and $x\in2^\mathbb{N}$.

>[!tip] tail set
>We say that $A\subseteq 2^\mathbb{N}$ is a **tail set** if it does not depend on a finite number of coordinates, in other words:
>$$(\forall\;k\in\mathbb{N})\;A\sim\{k, k+1,...\}.$$

Every tail set has measure $1$ or $0$. This is Kolmogorov's 0-1 theorem.