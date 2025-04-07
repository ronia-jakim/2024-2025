> **Zadanie 1.** Udowodnij, że język $\{a^nb^nc^m\;:\;n\neq m\}$ nie jest CFL.
> *Wskazówka. Lemat o pompowaniu wydaje się nie działać. A gdyby w sformułowaniu Lematu zastąpić wszystkie wystąpienia symbolu $|-|$ (oznaczającego długość słowa) symbolem $|-|_c$ (oznaczającego liczbę wystąpień literki $c$?)*

**Lemat**: dla dowolnego CFL $L$ nad alfabetem $\{a,b,c\}$ istnieje stała $k$ taka, że dla każdego słowa $w\in L$ takiego, że $|w|_c\geq k$ istnieje rozkład $w=sztyx$, gdzie $|zy|_c\geq 1$, $|zty|_c\leq k$ taki, że dla każdego $n\in\mathbb{N}$ $sz^nty^nx\in L$.

Ponieważ mamy język CFL, to ma on gramatykę CFG $G$ w postaci Chomskiego. Niech $n$ będzie liczbą nieterminali w tej gramatyce. Jako stałą $k$ ustalmy liczbę $2^{(n+1)}$. 

Niech $w$ będzie dowolnym słowem zawierającym co najmniej $k$ literek $c$.  Szukam teraz nieterminalu, który ma co canjmniej jedną literkę $c$ i co najwyżej $k$ literek $c$ (co się stanie, bo literki to tylko liście) i w jego poddrzewie jest ten sam nieterminal (co też się stanie z zasady szufladkowej)

> Jak każdy świetnie pamięta, dla niedeterministycznego automatu skończonego $A$ przez $L_A$ oznaczaliśmy język słów akceptowanych przez ten automat. To znaczy zbiór takich słów $w$, dla których istnieje ścieżka w $A$, prowadząca od stanu początkowego do jakiegoś stanu akceptującego, taka, że ciąg etykiet krawędzi na tej ścieżce tworzy słowo $w$.
> 
> W kolejnych dwóch zadaniach dla automatu $A$ przez $L_A^{\mathbb{1}}$ oznaczmy zbiór takich słów $w$, dla których istnieje dokładnie jedna ścieżka w $A$, prowadząca od stanu początkowego do jakiegoś stanu akceptującego, taka że ciąg etykiet krawędzi na tej ścieżce tworzy słowo $w$.

> **Zadanie 2.** Pokaż, że dla każdego niedeterministycznego automatu skończonego $A$ język $L_A^{\mathbb{1}}$ jest regularny.

Mam NFA $(Q, q_0, F, \delta)$ i tworze DFA
$Q'=\mathcal{P}(Q)\times\{0,1,\star\}$
$q_0'=\{q_0\}\times\{1\}$
$F'=\{B\subseteq Q\;:\; B\cap F=\{p\}\}\times \{1\}$
$\delta(B, a)=\{(p, 1)\;:\;(\exists\;(b, 0)\neq (q, 0)\in B\;:\;\delta(b,a,p)\;\land\;\delta(q,a,p)\}$


> **Zadanie 3.** Czy istnieje wielomian $p$ taki, że dla każdego $n\in\mathbb{N}$ i każdego niedeterministycznego automatu skończonego $A$ o $n$ stanach istnieje niedeterministyczny automat skończony $B$ o co najwyżej $p(n)$ stanach taki, że $L_A^{\mathbb{1}}=L_B$.

nie?