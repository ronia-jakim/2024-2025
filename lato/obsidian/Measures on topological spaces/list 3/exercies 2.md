> Let $\mu\in \mathbb{P}(X)$. Check that for any arbitrary set $Z\subseteq X$ there is $H\in Bor(X)$ (in fact, of type $G_\delta$) such that $Z\subseteq H$ and $\mu(H)=\mu^*(Z)$. Such $H$, determined up to measure zero set, is called a measurable hull of $Z$. 

$$\mu^*(Z)=\inf\{\mu(B)\;:\;Z\subseteq B,\;B\in Bor(X)\}$$
Basically I need to show that this $\inf$ is actually reached by some set $H$, most probably an intersection of countably many open sets that have $Z$. 

Can I take Borel sets $Z\subseteq B_n$ such that $\mu^*(Z)+\frac{1}{n+1}\leq \mu(B_n)\leq \mu^*(Z)+\frac{1}{n}$ and just take their intersection.