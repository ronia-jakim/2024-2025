> Dla rozłącznych języków $A$ i $B$ mówimy, że język $C$ *separuje $A$ od $B$*, jeśli $A\subseteq C$ i $C\cap B=\emptyset$. Scenariusz zwykle jest taki, że $A$ i $B$ są skomplikowane (w jakimś sensie) i pytamy, czy istnieje prosty język który je separuje. Zadania w tym rozdziale są wariacjami na temat tego scenariusza

> Czy istnieje stała $c>0$ taka, że dla każdego $n\in\mathbb{N}$ istnieją rozłączne języki $A$ i $B$, z których każdy daje się rozstrzygać NFA o $n$ stanach, takie, że każdy język regularny $C$ separujący $A$ od $B$ ma indeks równy przynajmniej $c2^n$?

Niech $A$ będzie językiem słów, które na $n$-tym miejscu od końca mają $a$. Analogicznie definiuje $B$. Oba te języki mają NFA o $n$ stanach.

Pokażemy, że dla stałej $c=1$ wszystko śmiga.

Niech $C$ będzie dowolnym językiem rozdzielającym $A$ od $B$. Załóżmy nie wprost, że $|C|<2^n$ ma mniej stanów. Rozważmy rodzinę masek bitowych, gdzie $0$ oznacza posiadanie $a$ na danym miejscu, natomiast $1$ oznacza posiadanie $b$ na danym miejscu jest ich $2^n$ sztuk i żadne dwie nie mogą być w tej samej klasie abstrakcji.