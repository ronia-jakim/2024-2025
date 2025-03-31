> Recall that a $G_\delta$ subset in a topological space is one which is an intersection of countably many open sets.
> **Theorem.** A subspace $Y$ of a Polish space $X$ is itself Polish $\iff$ $Y$ is a $G_\delta$ subspace of $X$.

Let $U_n\subseteq U_{n-1}$ be open sets of $X$. Let $F_n=U_n^c$.  Define 
$$d'(x,y)=d(x,y)+\sum_{n\geq 0}\min\{2^{-n}, |\frac{1}{d(x, F_n)}-\frac{1}{d(y, F_n)}\}$$
We will show that convergent sequences are the same. 
If $x_n\to x$ in $d'$, then $x_n\to x$ in $d$ because $d'$ is larger.

Let $x_n\to x$ in $d$ and chose $\varepsilon>0$ and $N$ such that 
$$\sum_{k\geq N-1}2^{-k}<\frac{\varepsilon}{2}$$
Define 
$$f(y)=d(x,y)+\sum_{i=0}^N|\frac{1}{d(x, F_n)}+\frac{1}{d(y, F_n)}|$$ 
and $f(x)=0$. Then $f(x_n)\to 0$ and $d'(x, y)\leq \varepsilon$.