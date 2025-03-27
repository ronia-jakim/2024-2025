> Udowodnij, że język $L=\{a^nb^{2n}\;:\;n\in\mathbb{N}\}$ nie jest regularny.

Załóżmy nie wprost, że istnieje automat $A$ rozpoznający ten język. Niech $k$ oznacza liczbę jego stanów. Zdefiniujmy rodzinę $(k+1)$ słów $w_i=a^i$. Ponieważ jest ich $(k+1)$ sztuk, a stanów w automacie jest tylko $k$, to istnieją dwa słowa takie, że 
$$\delta(w_i, q_0)=\delta(w_j, q_0)$$
tj. kończą w tym samym stanie. Doklejmy do obu to samo słowo $b^{2i}$. Wtedy $w_ib^{2i}=a^ib^{2i}$ i jest akceptowalne, natomiast $w_jb^{2i}=a^jb^{2j}$, $i\neq j$ więc to słowo nie jest akceptowalne.