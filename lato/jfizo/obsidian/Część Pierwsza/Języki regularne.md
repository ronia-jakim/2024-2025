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



## metody uwalania regularności

zasada szufladkowa i DFA 
- [[Zadanie 1. CW DFA]]
- [[Zadanie 3. nieregularność]]
lemat o pompowaniu
- [[Zadanie 5. pump up the jam]]
- [[Zadanie 6. double pump]]
twierdzenie o indeksie [[Zadanie 7. twierdzenie o indeksie]]