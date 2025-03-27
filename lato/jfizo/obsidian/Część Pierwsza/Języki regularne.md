Języki regularne posiadają [[Deterministyczne Automaty Skończone|DFA]] lub [[Niedeterministyczne Automaty Skończone NFA|NFA]], które potrafią je rozpoznawać.

<span style="color:rgb(146, 208, 80)">Lemat o pompowaniu</span> mówi, że jeśli język $L$ jest regularny, to istnieje stała $n$ taka, że dla każdego $w\in L$, $|w|\geq n$  znajdziemy rozkład $w=xyz$, $y\neq\varepsilon$, $|xy|\leq n$ taki, że $(\forall\;k\in \mathbb{N})\;xy^kz\in L$ (w tym dla $k=0$).
## metody uwalania regularności

zasada szufladkowa i DFA 
- [[Zadanie 1. CW DFA]]
- [[Zadanie 3. nieregularność]]
lemat o pompowaniu
- [[Zadanie 5. pump up the jam]]
- [[Zadanie 6. double pump]]