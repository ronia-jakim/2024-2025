NFA tym się różni od DFA, że żuczek błądzi po grafie wczytując literkę, a nie ma wytyczonej jednej ścieżki. Interesuje go tylko, czy w jakimś równoległym wszechświecie błądząc skończy w stanie akceptującym. Przykład automatu rozpoznającego język zakończony literką $1$:
![[NFASimpleExample.svg.png]]
jest niedeterministyczny, bo żuczek może z $p$ pójść do $q$ mając $1$, ale może też zostać w $p$, przy czym brak krawędzi wychodzącej z wierzchołka oznacza, że żuczek wybucha i nie akceptuje.

<span style="color:rgb(146, 208, 80)">Niedeterministyczny automat skończony</span> to krotka $(Q, q_0, \Sigma, \delta, F)$ jak w DFA z tym, że zamiast funkcji przejścia mamy relację przejścia, czyli zbiór
$$\delta\subseteq Q\times \Sigma\times Q.$$
Mając automat NFA $A$ język przez niego rozpoznawany to
$$L_A=\{w\in\Sigma^*\;:\;(\exists\;q\in F)\;\delta(q_0, w, q)\},$$
czyli istnieje ścieżka po słowie $w$ od stanu początkowego do jakiegoś stanu akceptującego.

## jak stworzyć DFA mając NFA?

Niech $A=(Q, q_0, \Sigma, \delta, F)$ będzie dowolnym automatem NFA. Będziemy definiować deterministyczny automat $A'=(Q', q_0', \Sigma, \delta', F')$ rozpoznający ten sam język
- $Q'=\mathcal{P}(Q)$ jest zbiorem potęgowym $Q$
- $q_0'=\{q_0\}$
- $F'=\{B\subseteq Q\;:\;B\cap F\neq \emptyset\}$ to wszystkie podzbiory $Q$ zahaczających o stany akceptujące
- $\delta'(B, a)=\{q\in Q\;:\;(\exists\;p\in B)\;\delta(p, a, q)\}$ czyli dla dowolnego podzbioru $B\subseteq Q$ krawędź etykietowana literką $a$ to wielki worek do którego wsypujemy wszystkie końce krawędzi $a$ wychodzące z $B$ w oryginalnym NFA.