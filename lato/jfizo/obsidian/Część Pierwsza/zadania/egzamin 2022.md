> **Zadanie 1.** Udowodnij, że język $\{a^nb^nc^m\;:\;n\neq m\}$ nie jest CFL.
> *Wskazówka. Lemat o pompowaniu wydaje się nie działać. A gdyby w sformułowaniu Lematu zastąpić wszystkie wystąpienia symbolu $|-|$ (oznaczającego długość słowa) symbolem $|-|_c$ (oznaczającego liczbę wystąpień literki $c$?)*

> Jak każdy świetnie pamięta, dla niedeterministycznego automatu skończonego $A$ przez $L_A$ oznaczaliśmy język słów akceptowanych przez ten automat. To znaczy zbiór takich słów $w$, dla których istnieje ścieżka w $A$, prowadząca od stanu początkowego do jakiegoś stanu akceptującego, taka, że ciąg etykiet krawędzi na tej ścieżce tworzy słowo $w$.
> 
> W kolejnych dwóch zadaniach dla automatu $A$ przez $L_A^{\mathbb{1}}$ oznaczmy zbiór takich słów $w$, dla których istnieje dokładnie jedna ścieżka w $A$, prowadząca od stanu początkowego do jakiegoś stanu akceptującego, taka że ciąg etykiet krawędzi na tej ścieżce tworzy słowo $w$.

> **Zadanie 2.** Pokaż, że dla każdego niedeterministycznego automatu skończonego $A$ język $L_A^{\mathbb{1}}$ jest regularny.

Niech $A=(Q, q_0, \Sigma, \delta, F)$ będzie NFA rozpoznającym język $L$. Mój pomysł to puścić $|F|=n$ żuczków z każdego stanu końcowego i cieszyć się tylko, jeśli nigdy dwa żuczki się nie spotkają, nawet w stanie $q_0$.
- nowe stany to $Q^n$
- stany początkowe to $F$ (mogę zamienić w jeden stan początkowy doklejając do nich krawędzie o pustych słowach do dodatkowego wierzchołka)
- stan końcowy to $q_0$
- relacja przejścia to zbiór
$$ \delta=\{ ((q_1,..., q_n), a, (p_1,..., p_n)) \;:\;\begin{matrix}(\forall\;i\neq j)\;p_i\neq p_j\\\land\;(\exists\; i)\delta(p_i, a)=q_i \end{matrix} \} \subseteq Q^n\times \Sigma\times Q^n$$
	czyli umiem przejść z $\overline{q}$ do $\overline{p}$ mając literkę $a$, jeśli w oryginalnym automacie umiałam przejść z któregoś $p_i$ do $q_i$ mając literkę $a$ oraz jeśli te ścieżki od początku nie krzyżują się. Jeśli się krzyżują, to znaczy, że mogę potencjalnie znaleźć dwie ścieżki do $q_0$, a jeśli się nie krzyżują, to na pewno tak nie będzie?


> **Zadanie 3.** Czy istnieje wielomian $p$ taki, że dla każdego $n\in\mathbb{N}$ i każdego niedeterministycznego automatu skończonego $A$ o $n$ stanach istnieje niedeterministyczny automat skończony $B$ o co najwyżej $p(n)$ stanach taki, że $L_A^{\mathbb{1}}=L_B$.

nie?