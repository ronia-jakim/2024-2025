> **Analytic sets** A set $A$ in a Polish space is said to be *analytic* if there is a continuous map $f:\mathbb{N}^\omega\to X$ such that $f[\mathbb{N}^\omega]=A$. Let 
> $$\mathbb{N}^{<\omega}:=\bigcup_k\mathbb{N}^k$$
> denote the set of all finite sequences of natural numbers (including the empty sequence $\emptyset\in\mathbb{N}^0$). We write $\alpha|n=(\alpha_0,...,\alpha_{n-1})$; $\sigma_1\frown\sigma_2$ denotes the concatenation (putting sequences $\sigma_1, \sigma_2$ toghter).
> By a (regular) Souslin scheme in a Polish space $X$ we mean a family of closed sets 
> $$F=\{F_\sigma\;:\;\sigma\in\mathbb{B}^{<\omega}\}$$
such that $F_{\sigma\frown n}\subseteq F_\sigma$ for every $\sigma \in\mathbb{N}^{<\omega}$ and $n\in\mathbb{N}$ (those two conditions make it regular). Using such a scheme we define
$$A(F)=\bigcup_{\alpha\in\mathbb{N}^\omega}\bigcap_k F_{\alpha|k},$$
as the result of the Souslin operation.
Prove that $A\subseteq X$ is analytic $\iff$ $A$ is the result of the Souslin operation over some Souslin scheme or read the proof of Thm 25.7 in [Kechris].

