Od teraz wszystkie liczby są zapisane binarnie, a $|n|$ oznacza długość zapisu $n$.

>[!tip] P
>Zbiór $A$ jest w $P$, jeśli istnieje maszyna Turinga, która rozpoznając, czy liczba $n$ jest w $A$ wykona wielomianowo wiele kroków względem długości $n$.

>[!info] redukcja wielomianowa
>$A\leq_p B$ jeśli istnieje funkcja $f:\Sigma_A^*\to\Sigma_B^*$ taka, że
>- $\exists\;p\in\mathbb{Z}[x]$ oraz maszyna Turinga $M$, która wylicza $f(a)$ w $\leq p(|a|)$ krokach
>- $a\in\Sigma_A^*\iff f(a)\in B$.

# Ważne problemy
>[!warning] 3-SAT
>Mamy koniunkcję o co najwyżej $3$ literałach, tzn. mamy dużo nawiasów sklejonych $\land$, ale w każdym nawiasie mam alternatywę co najwyżej trzech literek (lub ich negacji). Możemy mieć $(a\;\lor\;b\;\lor\;c)\;\land\;(a\;\lor\;\neg e\;\lor\;f)$ jest OK.
>Pytamy, czy możemy podstawić pod literki, żeby było prawdą.

>[!warning] 3-COL
>trzykolorowanie grafu

**3-COL $\leq_p$ 3-SAT**
zmienne w formule to czy wierzchołek $v$ jest pokolorowany na red, blue czy green
najpierw sprawdzamy czy każdy wierzchołek ma jakąś barwę $(r_v\;\lor\;b_v\;\lor\;g_v)$
a potem czy dwa sąsiednie są różnego koloru, czyli dla każdej $(u,v)\in E$ sprawdzamy $(\neg r_v\;\lor \neg r_u)\;\land\;(\neg b_v\;\lor\;\neg b_u)\;\land\;(\neg g_v\;\lor\;\neg g_u)$

**3-SAT $\leq_p$ 3-COL**
tutaj tworzymy graf i łączymy rzeczy w jednym nawiasie przy pomocy "gadżegu", czyli trójkącika z wystającymi antenkami



