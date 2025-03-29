> W kolejnych trzech zadaniach przyjmujemy, że $\Sigma=\{a,b,c,d\}$. Niech $P\subseteq\Sigma^*\times\Sigma^*$ będzie określona - również w kolejnych trzech zadaniach - jako najmniejsza symetryczna relacja taka, że 
> - dla każdego $w\in\Sigma^*$ zachodzi $P(w,\varepsilon)$
> - dla każdego $a\in\Sigma$ i każdych $w,v\in\Sigma^*$ jeśli $P(w,v)$ to $P(aw, av)$.
> Przez $L_{p/q}$ będziemy oznaczać język
> $$\{w\in\Sigma^*\;:\;(\exists\;v\in L)\;P(w,v)\;\land\;|w|/|v|=p/q\}$$


> Niech $L\subseteq \Sigma^*$ będzie regularny. Czy wynika z tego, że 
>1. język $L_{3/2}$ jest regularny?
>2. język $\bigcup_{i=1}^\infty L_{1/i}$ jest regularny?

1.
Wystarczy, że istnieje w języku $v\in L$ długości $\frac{2}{3}|w|$? 

Niech $A=(Q, q_0, \Sigma, \delta, F)$ będzie DFA języka $L$. Tworzymy
$$A'=(Q', q_0, \Sigma, \delta', F)$$
Na każdej krawędzi dokładamy dwa wierzchołki, czyli o $\delta$ myślimy jako o zbiorze krawędzi
$$Q'=Q\cup \bigcup_{e\in \delta}\{\star_e,\ast_e\}$$
Tutaj nie mają znaczenia literki, interesuje mnie tylko długość ścieżki i czy kończy się w stanie akceptującym. Na początku dla $L_{1/3}$ , czyli długość $\frac{1}{3}|w|$:
$$\delta'=\bigcup_{e=(v, a, w)\in \delta}\{(v,a,\star_e),(\star_e, a, \ast_e), (\ast_e, a, w)\}$$
i potem $L_{2/3}$ ma jako $\delta''$ chodzenie co dwa kroki, albo od razu:
$$\delta'=\bigcup_{e=(v,a,w)\in\delta}\{(v,a,\ast_e),(\star_e,a,w),(\ast_e, a, \star_e)\}$$
2.
W tym zadaniu mamy $|w|$ i pytamy, czy istnieje w języku $v$ takie, że $|v|=i|w|$. Czyli dla każdej literki z $|w|$ robimy $i$ kroków, więc $Q$ języka $L$ jest niezmienione. Co prawda każdy język $L_{1/i}$ konstruujemy nad $Q$ z własną $\delta_i$ skaczącą co $i$, ale nad skończonym $Q$ mamy skończenie wiele funkcji (którymi są $\delta_i$). Niekonstruktywnie wiemy, które z $\delta$ są realizowane dla danego $i$, więc wybieramy skończenie wiele z tych funkcji i jednak zamiast nieskończonego automatu mamy skończony. 
