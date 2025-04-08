> Jak każdy pamięta, w pierwszym zadaniu w Zbiorze Zadań należało udowodnić, że język $L=\{vaw\;:\;v,w\in\{a,b\}^*,\;|w|=9\}$ daje się rozstrzygać niedeterministycznym automatem skończonym o $11$ stanach, ale nie daje się rozstrzygać deterministycznym automatem o mniej niż $1024$ stanach. To zadanie, wraz z jego rozwiązaniem warto być może mieć teraz w głowie.

> **Zadanie 1.** Jak każdy świetnie pamięta, język $L_{v\neq w}=\{vw\;:\;v,w\in\{0,1\}^*,\;|v|=|w|,v\neq w\}$ jest bezkontekstowy. Daje się go rozstrzygać niedeterministycznym automatem z jednym licznikiem (to znaczy automatem ze stosem, którego alfabet symboli stosowych jest jednoelementowy, jeśli nie liczyć symbolu dna stosu). Pokaż, że języka $L_{v\neq w}$nie da się rozstrzygać deterministycznym automatem z jednym licznikiem. *Uwaga. Jak pamiętamy, dla niedeterministycznych automatów ze stosem akceptacja pustym stosem jest równoważna akceptacji stanem akceptującym. Dla deterministycznych automatów taka równoważność nie zachodzi - automat akceptuje gdy po wczytaniu całego słowa jest w stanie akceptującym*

Załóżmy nie wprost, że istnieje taki automat deterministyczny ze stosem o $k$ stanach. Stos ma tylko operacje "dodaj $1$", "odejmij $1$" oraz "stój w miejscu". $10^n$ i po prostu się pętli w tym $0$ nie wiedząc kiedy zacząć zdejmować.

>W kolejnych dwóch zadaniach rozważamy Odrobinkę Niedeterministyczne Automaty Skończone (ONFA). Taki automat to, podobnie jak DFA albo NFA, krotka $(\Sigma, Q, Q_0, F, \delta)$, gdzie oznaczenia są jak zwykle, zaś $Q_0\subseteq Q$ jest zbiorem stanów początkowych. Słowo $w$ jest akceptowane przez taki automat, gdy istnieje $q\in Q_0$ takie, że $\delta(q, w)\in F$. 

>**Zadanie 2.**  Pokaż, że istnieje ciąg języków $\{L_i\}_{i\in \mathbb{N}}$ i stałe $c,k>0$ takie, że każdy $L_i$ daje się rozstrzygać przy pomocy ONFA o nie więcej niż $ki$ stanach, ale żaden $L_i$ nie daje się rozstrzygać przy pomocy DFA o mniej niż $2^{ci}$ stanach. 

Dla wskazania $L_i$ rozważamy alfabet $\{1,..., i\}$ i pakujemy do niego wszystkie słowa. które nie mają jednej literki. ONFA działa mając $i$ początkowych stanów, które odpowiadają zgadnięciu, która literka się nie pojawi, i jeden stan "wiecznego nieszczęścia"

DFA robimy szufladkami/pokazujemy z ideksu, że mając $2^i$ różnych ciągów $0-1$ długości $i$ (maski bitowe), to one nie mogą być w tej samej klasie abstrakcji

>**Zadanie 3.** nie istnieje.