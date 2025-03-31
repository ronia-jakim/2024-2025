> **Baby Selection Theorem.** Ket $g:K\to L$ be a continuous surjection between compact metrizable spaces. Prove that there is a Borel function $s:L\to K$ such that $f\circ s=id_L$. 
> 
> *Hint.* Assume first that $K\subseteq[0,1]$ and define $s(y)=\inf\{x\in K\;:\;f(x)=y\}$. For the general case use the fact that $K$ is a continuous image of the Cantor set contained in $[0,1]$.

I will start with the assumption that $s$ in the hint is good.

From lecture 2 we know that every compact metric space is a continuous image of $2^{\mathbb{N}}$. 

```tikz

\usepackage{tikz-cd}
\begin{document}
\begin{tikzcd}
& & K\arrow[r, "g" above] & L\\ 
& Cantor\arrow[ur, "p" above left] \arrow[urr, "g\circ p" below right] \\
K\arrow[ur, "s" above left]\arrow[uurr, bend left=20, "p\circ s=id_K"] & L\arrow[u, "s'" right]
\end{tikzcd}
\end{document}
```
Złożenie