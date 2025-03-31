> **Analytic sets** A set $A$ in a Polish space is said to be *analytic* if there is a continuous map $f:\mathbb{N}^\omega\to X$ such that $f[\mathbb{N}^\omega]=A$. Let 
> $$\mathbb{N}^{<\omega}:=\bigcup_k\mathbb{N}^k$$
> denote the set of all finite sequences of natural numbers (including the empty sequence $\emptyset\in\mathbb{N}^0$). We write $\alpha|n=(\alpha_0,...,\alpha_{n-1})$; $\sigma_1\frown\sigma_2$ denotes the concatenation (putting sequences $\sigma_1, \sigma_2$ toghter).
> By a (regular) Souslin scheme in a Polish space $X$ we mean a family of closed sets 
> $$F=\{F_\sigma\;:\;\sigma\in\mathbb{B}^{<\omega}\}$$
such that $F_{\sigma\frown n}\subseteq F_\sigma$ for every $\sigma \in\mathbb{N}^{<\omega}$ and $n\in\mathbb{N}$ (those two conditions make it regular). Using such a scheme we define
$$A(F)=\bigcup_{\alpha\in\mathbb{N}^\omega}\bigcap_k F_{\alpha|k},$$
as the result of the Souslin operation.
Prove that $A\subseteq X$ is analytic $\iff$ $A$ is the result of the Souslin operation over some Souslin scheme or read the proof of Thm 25.7 in [Kechris].


$\impliedby$ 
We have the family $\{F_\alpha\}$ such that 
$$A=\bigcup_{\sigma\in\mathbb{N}^\omega}\bigcap_kF_{\sigma|k}$$
We define $f:\mathbb{N}^\omega\to X$ by setting $f(\alpha)=\bigcap_kF_{\alpha|k}$.

$$f(\mathbb{N}^\omega)=f(\bigcup_\alpha \alpha)=\bigcup_\alpha f(\alpha)=\bigcup_\alpha\bigcap_k f_{\alpha|k}=A$$

$\implies$ 
Take any $\alpha\in\mathbb{N}^k\subseteq\mathbb{N}^{<\omega}$ and treat it as a partial function $[\alpha]=\{x\in\mathbb{N}^\omega\;:\;x|[k]=\alpha\}$. Set $F_\alpha=f[\alpha]$. It is regular, because 
$$[\alpha\frown n]=\{x\in\mathbb{N}^\omega\;:\;x|k=\alpha\;\land\;x(k)=n\}\subseteq [\alpha].$$

Now what remains is that
$$\bigcup_\alpha\bigcap_kF_{\alpha|k}=f[\mathbb{N}^\omega]=A$$
$\subseteq$ is obvious
$\supseteq$ 
$x\in A=f[\mathbb{N}^\omega]$ and chose $\alpha\in\mathbb{N}^\mathbb{N}$ such that $f(\alpha)=x$. Here we have $l_p$ norm so if we take $x_k\in[\alpha|k]-[\alpha|(k+1)]$ then it should be closer to $\alpha$ than $x_{k-1}$ because then must agree on more terms. That is, $d(x_k, \alpha)\to 0$ and $d(x_k, x_{k+1})\to 0$. 
Since $f$ is continuous, then $f(x_k)$ is also Cauchy and so $f(x_k)\to f(\alpha)$.