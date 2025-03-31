> Generalize Lusin's theorem: If $f:X\to Y$ is a Borel map between separable metrizable spaces then for every $\mu\in\mathcal{P}(X)$ and $\varepsilon>0$ there is a closed set $F\subseteq X$ such that $\mu(X-F)<\varepsilon$ and $f|F:F\to Y$ is continuous.
> *Hint:* think that $Y\subseteq[0,1]^\mathbb{N}$ 

Let $X,Y$ be separable metrizable spaces. Consider $f_n=\pi_n\circ f$, where $\pi_n:[0,1]^\mathbb{N}$ is projection onto $n$-th coordinate. 
$$f_n:X\to [0,1]$$
$F_n\subseteq X$ closed such that $\mu(X-F)<\frac{\varepsilon}{2^{n+1}}$ and $f_n|F_n$ is continuous. 
Take $F=\bigcap F_n$. It has the right measure (consider complements). Then $f_n|F$ is continuous and so $f|F$ is continuous.