> Pokaż, że 3-SAT $\leq_p$ 3-SAT3. To ostatnie to 3-SAT ograniczony tylko do formuł, w których żadna zmienna nie występuje więcej niż 3 razy.

Robię jedno wielkie kółko implikacji, bo $a\;\lor\;\neg b$ to to samo co $b\implies a$.

Czyli jeśli $a$ występuje $k$ razy, to wystarczy dodać $(k-1)$ nowych zmiennych i gdzie widzę $a$ to podstawić je i potem dodać
$$(a\lor\;\neg a_1)\;\land\;(a_1\lor\;\neg a_2)\;\land\;...\;\land\;(a_{k-1}\;\lor\;\neg a)$$
kółeczko implikacji, które sprawia, że wszystkie nowe zmienne są równoważnością.