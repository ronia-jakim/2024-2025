> Funkcję $f:\mathbb{N}\to \mathbb{N}$ nazywamy funkcją Conway'a, jeśli istnieją liczby naturalne $p$, $a_1$, $b_1$, ..., $a_p$, $b_p$ takie, że dla każdego $n$ jeśli $n=k\mod p$, to $f(n)=na_k/b_k$. Pokaż, że nie ma algorytmu, który dla danych $p$, $a_1$, $b_1$,..., $a_p$, $b_p$ odpowiedziałby, czy dla definiowanej przez te współczynniki funkcji Conway'a istnieje $m$ takie, że $f^m(2)=1$, gdzie $f^m$ oznacza funkcję $f$ złożoną $m$ razy ze sobą.

Mamy żuczka pamiętającego dwie liczby i skaczącego jak jełop po kamyczkach. Celem jest zapisanie zapisanie aktualnej konfiguracji jako jednej liczby - wejścia do $f$ i zwrócenie z $f$ zapisania konfiguracji po kroku żuczka-jełopa.

Jestem w jakimś stanie i widzę na licznikach liczby $j$ oraz $k$, to koduję jako $N=3^j5^kp_1^{i_1}...p_n^{i_n},$ gdzie $p_m$ to liczby pierwsze, $i_m=1$ gdy jesteśmy w stanie $m$, wpp. jest $=0$ . Sprawdzić, który licznik jest pusty można biorąc modulo $15$.

$p=15\cdot p_1...p_n,$

na podstawie $N\mod p$ widzę, który stos jest pusty, który nie i w którym stanie jestem. To mi daje $\delta$, na przykład

$\delta(q_m, 0, 1)=\delta(q_l, 1^\alpha, -1)$, tj. na pierwszy stos dokładam $\alpha$ razy, a z drugiego stosu zdejmuję.
$a_k=p_l\cdot 3^\alpha$
$b_k=p_m\cdot 5$