> Niech $\Sigma$ będzie skończonym alfabetem i niech $L\subseteq\Sigma^*$. Jak pamiętamy, relacja $\sim_L$ z twierdzenia o indeksie zdefiniowana jest, na zbiorze $\Sigma^*$ jako 
> $$w\sim_L v\iff(\forall\;x\in \Sigma^*)\; (wx\in L\iff vx\in L).$$
> Podobnie możemy zdefiniować relacją równoważności $\sim_L^{inf}$
> $$w\sim_L v\iff(\forall\;x,y\in \Sigma^*)\; (ywx\in L\iff yvx\in L).$$

> Udowodnij, że jeśli jedna z liczb $i_L$, $i_L^{inf}$ jest skończona, to obie są skończone (z twierdzenia o indeksie wiemy, że ma to miejsce $\iff$ $L$ jest regularny). Dokładniej mówiąc:
> 1. udowodnij, że $i_L\leq i_L^{inf}$
> 2. udowodnij, że $i_L^{inf}\leq i_L^{i_L}$

1\. 
Chcemy pokazać, że $\sim_L$ skleja więcej niż $\sim_L^{inf}$. Dla słów $w\sim_L^{inf}$ wystarczy brać $y=\varepsilon$, a $x$ pozostawić dowolny. 

2\. 
Z poprzedniego zadania wiemy, że $i_L$ to liczba stanów w automacie rozpoznającym $L$. O liczbie $i_L^{i_L}$ możemy więc myśleć jako o liczbie funkcji $Q\to Q$. 

Niech $w$ będzie dowolnym słowem. Możemy potraktować je jako funkcję 
$$w:Q\to Q$$
$$w(p)=\delta(w, p)$$
która przyjmuje stan $p$ i zwraca stan, w jakim skończymy, jeśli zaczniemy w $p$ i przejdziemy od tego miejsca słowem $w$. 

Takich różnych funkcji może być co najwyżej $|Q|^{|Q|}$. 

Jeśli dwa słowa $w_1\sim_L^{inf}w_2$ są w relacji, to definiują tę samą funkcję $Q^Q$: zmieniając słowo $y$ możemy dostać dowolny stan $Q$, który potem wkładamy do funkcji $w_i$. Ponieważ potem idąc słowem $x$ lądujemy zawsze w tym samym słowem, to właśnie działanie funkcji $w_i$ na stanie $\delta(y, q_0)$ jest takie samo dla obu słowo-funkcji.