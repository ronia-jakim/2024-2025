> Zbuduj automat ze stosem rozpoznający język dobrze rozstawionych nawiasów dwóch rodzajów generowany przez gramatykę:
> $$S\to SS\;|\;(S)\;|\;[S]\;|\;\varepsilon$$
> która ma jeden symbol nieterminalny $S$ i cztery symbole terminalne $(,), [,]$. 

$Q=\{q_0, q_1\}$, gdzie stan $q_0$ oznacza, że jeszcze nie zamykamy nawiasów, a $q_1$ - że czas zamykać

Dokładamy nowe otwarte nawiasy
- $\delta([q_0, (, A], [q_0, A(])$
- $\delta([q_0, [, A], [q_0, A[\;])$ 
zgadujemy, że czas podomykać troszkę nawiasów
- $\delta([q_0, \varepsilon, (], [q_1, (])$
- $\delta([q_0, \varepsilon, [\;], [q_1, [\;])$
sprawdzamy, czy wszystko się elegancko domyka
- $\delta([q_1, ), (], [q_1, \varepsilon])$ - mam parę $()$
- $\delta([q_1, ], [\;], [q_1, \varepsilon])$
teraz zgaduję, że czas zacząć znowu otwierać nawiasy
- $\delta([q_1, \varepsilon, ()], [q_0, ()])$ -> mogę to robić gdy już mam coś niedomkniętego, ale nie powinnam mieć zamykającego nawiasu na stosie
- $\delta([q_1, \varepsilon, [\;], [q_0, [\;])$
- $\delta([q_1, \varepsilon, Z], [q_0, Z])$ -> mogę też wrócić do dokładania nawiasów, gdy zdjęłam wszystkie do tej pory