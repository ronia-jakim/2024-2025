> Ostatnie dwa zadania w tej sekcji dotyczą zbiorów produktywnych. Zbiór $A\subseteq \mathbb{N}$ jest produktywny, jeśli dla każdego rekurencyjnie przeliczalnego podzbioru $A=Dom(\phi_n)$ funkcja $f(n)$ pokazuje liczbę, która jest w $A$, ale nie w tym podzbiorze.
> 
> Pokaż, że istnieje zbiór jednocześnie produktywny i co-r.e.

Może $A=K^c$, dopełnienie $K$.

$f(n)=n$

Rozpatrzmy dwa przypadki
1. $\phi_n(n)=n$ terminuje się, wtedy $Dom(\phi_n)\not\subseteq A$ i jest OK
2. $\phi_n(n)=\perp$ nie terminuje się, wtedy nie ważne, czy $Dom(\phi_n)\subseteq A$, bo i tak mamy $f(n)\in K^c-Dom(\phi_n)$ , no $n\not\in Dom(\phi_n)$.