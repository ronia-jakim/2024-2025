> W kolejnych trzech zadaniach przyjmujemy, że $\Sigma=\{a,b,c,d\}$. Niech $P\subseteq\Sigma^*\times\Sigma^*$ będzie określona - również w kolejnych trzech zadaniach - jako najmniejsza symetryczna relacja taka, że 
> - dla każdego $w\in\Sigma^*$ zachodzi $P(w,\varepsilon)$
> - dla każdego $a\in\Sigma$ i każdych $w,v\in\Sigma^*$ jeśli $P(w,v)$ to $P(aw, av)$.
> Przez $L_{p/q}$ będziemy oznaczać język
> $$\{w\in\Sigma^*\;:\;(\exists\;v\in L)\;P(w,v)\;\land\;|w|/|v|=p/q\}$$

> Niech $L\subseteq \Sigma^*$ będzie CFL. Czy wynika z tego, że $L_{3/4}$ jest CFL?

Tak

Podobnie jak w 78.a., tylko kiedy chcemy zwolnić żuczka to zamiast kroić krawędzie mamy identyczność na stosie $4$ razy pod rząd. Natomiast kiedy go przyśpieszamy, to trzeba $3$ razy zrobić $\varepsilon$-przejścia.

Zacznijmy od spisania tego przyśpieszania
$$A'=(\Sigma, Q\times[3]\cup\{\heartsuit, \spadesuit\}, \heartsuit, S, Z, \delta')$$

Dla każdej krotki $([q,\varepsilon,S],[p,W])$ działamy w obrębie jednej warstw  y, czyli
$$([(q,i),\varepsilon,S],[(p,i), W])$$
Z kolei dla wszystkich innych krotek $([q,a,S],[p,W])$ z pierwotnego automatu tworzymy reguły w nowym automacie:
- $i\leq 1$ (czyli jesteśmy na jednej z trzech górnych warstw)
  $([(q,i),\varepsilon,S],[(p,i+1),W])$ 
- $i=2$ (czyli wg. Łukasza konsumujemy literkę)
  $(\forall\;b\in\Sigma)\;([(q,2),b,S],[(p,0),W])$
Czyli innymi słowy: każde przejście w oryginalnym grafie zamieniamy na przejście między dowolnymi dwiema kolejnymi warstwami w nowym grafie. Przy czym jak się pojawia gdzieś $Z$ z oryginalnego żuczka, to zamieniam go na $\partial$. Tzn. jeśli gdzieś jako $S$ jest $Z$, to zamieniam go na $\partial$, żeby zrobić double checking niżej

Przy czym trzeba dodać nowy sztuczny stan, który wrzucamy na początku i to co w nim wrzucimy na stos można zdjąć tylko jak będziemy na warstwie $0$ i to blokuje automat, by nie czytać dalej słowa. Dodajmy więc stany $\heartsuit$, $\spadesuit$ i relacje
$$([\heartsuit,\varepsilon, Z],[(q_0, 0),\partial])$$
oraz rodzinę przejść
$$(\forall\;q\in Q)\;([(q,0),\varepsilon,\partial],[(\spadesuit,0),Z])$$


Do spowalniania, gdy mamy krotkę z $\varepsilon$ to się nic nie zmienia. Natomiast dla $([q,a,P],[p,W])$ to dodajemy trzy nowe krotki:
$$([q,a,P],[\star,P]),\quad ([\star, a, P], [\ast,P]),\quad ([\ast, a, P],[\bigstar, P]),\quad ([\bigstar,a,P],[p,W])$$