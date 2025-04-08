Języki regularne posiadają [[Deterministyczne Automaty Skończone|DFA]] lub [[Niedeterministyczne Automaty Skończone NFA|NFA]], które potrafią je rozpoznawać.

<span style="color:rgb(146, 208, 80)">Lemat o pompowaniu</span> mówi, że jeśli język $L$ jest regularny, to istnieje stała $n$ taka, że dla każdego $w\in L$, $|w|\geq n$  znajdziemy rozkład $w=xyz$, $y\neq\varepsilon$, $|xy|\leq n$ taki, że $(\forall\;k\in \mathbb{N})\;xy^kz\in L$ (w tym dla $k=0$).

> [!faq] klasa języków regularnych
> Klasa języków regularnych nad $\Sigma$ jest najmniejszą klasą języków nad $\Sigma$, która
> 1. zawiera wszystkie języki skończone
> 2. jest zamknięta na:
> 	a.  sumę
> 	b. konkatenację
> 	c. gwiazdkę Kllene'go
> ^klasajezykowregularnych

> [!info] twierdzenie o indeksie
> Niech $L$ będzie językiem nad alfabetem $\Sigma$. Definiujemy relację równoważności na $\Sigma^*$
> $$w\sim_L v\iff (\forall\;x\in \Sigma^*)\;wx\in L\iff vx\in L.$$
> Liczba klas abstrakcji tej relacji to ilość stanów w minimalnym DFA rozpoznającym język $L$. 


## metody uwalania regularności

zasada szufladkowa i DFA 
- [[Zadanie 1. CW DFA]]
- [[Zadanie 3. nieregularność]]
lemat o pompowaniu
- [[Zadanie 5. pump up the jam]]
- [[Zadanie 6. double pump]]
twierdzenie o indeksie [[Zadanie 7. twierdzenie o indeksie]]