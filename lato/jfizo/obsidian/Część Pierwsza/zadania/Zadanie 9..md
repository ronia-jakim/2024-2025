> W tym zadaniu należy pokazać, że szacowanie z punktu 2. poprzedniego zadania nie może być poprawione. Dokładniej mówiąc:
> 1. Udowodnij, że jeśli $\Sigma=\{a,b,c\}$, to dla każdego skończonego zbioru $Q$ istnieje minimalny DFA $A$ o zbiorze stanów $Q$ i funkcji przejścia $\delta$ taki, że dla każdej funkcji $f:Q\to Q$ istnieje słowo $w$ dla którego dla każdego $q\in Q$ zachodzi $\delta(q, w)=f(q)$. Przez automat minimalny rozumiemy tu taki, w którym każdy stan jest osiągalny ze stanu początkowego i w którym dla każdych dwóch stanów $q, q'$ istnieje słowo $w$ takie, że dokładnie jeden ze stanów $\delta(q, w)$, $\delta(q', w)$ jest akceptujący
> 2. Korzystając z tezy punktu 1. udowodnij, że dla każdej liczby naturalnej $n$ istnieje język $L$ taki, że $i_L\leq n$ zaś $n^n\leq i_L^{inf}$. 

1\. 
Dowolna funkcja $Q\to Q$ to albo permutacja, albo coś skleja.

Najpierw permutacje, które mogę zapisać jako przesuwanie cykliczne ($a$) i zamiane 1 i 2 miejsca ($b$)

