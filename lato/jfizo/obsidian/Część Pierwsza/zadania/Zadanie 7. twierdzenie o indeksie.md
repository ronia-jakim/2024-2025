> Niech $L\subseteq \mathcal{A}^*$. Relację $\sim_L\subseteq\mathcal{A}^*\times\mathcal{A}^*$ definiujemy w następujący sposób: $w\sim_Lw'$ $\iff$ $(\forall\;v\in\mathcal{A}^*)[wv\in L\iff w'v\in L]$. Udowodnij następujące **twierdzenie o indeksie**: język $L$ jest regularny $\iff$ gdy liczba klas abstrakcji relacji $\sim_L$ jest skończona. Minimalna liczba stanów DFA rozpoznającego $L$ jest wtedy równa licznie tych klas abstrakcji.

$\implies$ Niech $A=(\Sigma, Q, q_0, \delta, F)$ będzie DFA o $n$ stanach rozpoznającym $L$. Dla każdego stanu przypiszmy słowo $w_i\in\Sigma^*$ takie, że $\delta(q_0, w_i)=q_i$, $i\neq j\implies q_i\neq q_j$. Wtedy dowolne inne słowo $w\in\Sigma^*$ musi kończyć w pewnym z tych stanów, $\delta(w, q_0)=q_i$ i wtedy $w\sim_L w_i$. 

$\impliedby$ Niech $[w_1],...[w_n]$ będą klasami abstrakcji $\sim_L$ reprezentowanymi przez pewne słowa $w_1,...,w_n$. Zdefiniujmy DFA $A=(\Sigma, Q, q_0, F, \delta)$, gdzie 
- $Q=\{[w_i]\;:\;i=1,...,n\}$,
- $q_0=[\varepsilon]$
- oraz $F=\{[w_i]\;:\;i=1,...,n\;\land\;w_i\in L\}$.
Funkcję przejścia $\delta$ definiujemy jako 
$$\delta(a, [w_i])=[w_ia]$$

Pozostaje sprawdzić, że $\delta(w, q_0)=[w]$. Dla słów jednoliterowych
$$\delta(a, q_0)=[a\varepsilon]=[a]$$
Zakładamy teraz, że działa to dla słów długości $\leq n$ niech $w=va$, gdzie $v$ ma długość $n$. 
$$\delta(w, q_0)=\delta(va, q_0)=\delta(a, \delta(v, q_0))=\delta(a, [v])= [va].$$
