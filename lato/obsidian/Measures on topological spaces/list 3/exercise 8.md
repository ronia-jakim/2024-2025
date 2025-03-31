> **Baby Selection Theorem.** Let $g:K\to L$ be a continuous surjection between compact metrizable spaces. Prove that there is a Borel function $s:L\to K$ such that $g\circ s=id_L$. 
> 
> *Hint.* Assume first that $K\subseteq[0,1]$ and define $s(y)=\inf\{x\in K\;:\;g(x)=y\}$. For the general case use the fact that $K$ is a continuous image of the Cantor set contained in $[0,1]$.

I will start with the assumption that $s$ in the hint is good.

From lecture 2 we know that every compact metric space is a continuous image of $2^{\mathbb{N}}$.  Cantor set is almost initial object in the category of compact metrizable spaces???? Is this surjection unique? I guess not.

```tikz
\usepackage{tikz-cd}
\begin{document}
\begin{tikzcd}
& & K\arrow[r, "g" above, twoheadrightarrow] & L\\ 
& Cantor\arrow[ur, "p" above left, twoheadrightarrow] \arrow[urr, "g\circ p" below right, twoheadrightarrow] \\
K\arrow[ur, "s" above left]\arrow[uurr, bend left=20, "p\circ s=id_K"] & L\arrow[u, "s'" right]
\end{tikzcd}
\end{document}
```
I know that $g\circ p$ is a surjection since it is a composition of two surjections. Moreover, since $p:Cantor\to L$ is a surjection from the hint and so $g\circ p\circ s'=id_L$. But $p\circ s':L\to K$ and everything is noice.

I know that a function is measurable if preimage of every Borel set is also Borel, so it is formed from open sets through 
- countable unions, 
- countable intersections 
- and relative complement.
In $[0,1]$ it should be enough to take any $[p, q)$?  ??????

$$g\circ s(y)=g(\inf\{x\in K\;:\;g(x)=y\})=y?$$
I think to show this I have to prove that $\{x\in K\;:\;g(x)=y\}$ is a closed set? Which is true if singletons are closed in $L$ cause $\{x\in K\;:\;g(x)=y\}=g^{-1}(\{y\})$. Since this is a closed set in a metrizable space, limit of every converging sequence is contained in this set (if it exists, of course).

