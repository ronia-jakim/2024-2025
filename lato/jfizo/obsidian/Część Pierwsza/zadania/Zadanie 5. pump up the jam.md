> Udowodnij, że język $L$ tych słów nad alfabetem $\{0,1\}$, które są zapisem binarnym liczby pierwszej nie jest regularny.

Załóżmy, że jest on językiem regularnym. To znaczy, że dla odpowiednio długich słów możemy zastosować lemat o pompowaniu. Niech $w$ będzie takim słowem długości $n$, które rozkładamy na $w=xyz$.
Oznaczmy $k=|z|$, $m=|y|$. Wtedy liczba $w$ z zapisu binarnego na liczbę tłumaczy się jako
$$z+2^{k}\cdot y+2^{k+m}x$$

Pompując takie $w$ dostajemy jako liczbę pierwszą wyrażenie $xy^az$, czyli liczbę
$$z+2^ky+2^{k+m}y+...+2^{k+m(a-1)}y+2^{k+ma}x$$
popatrzmy na środkowe wyrażenie
$$2^ky+2^{k+m}y+...+2^{k+(a-1)m}y=2^ky(1+2^m+...+2^{(a-1)m})=2^ky\cdot\frac{2^{am}-1}{2^m-1}$$

Podstawiając mamy
$$z+2^ky\frac{2^{am}-1}{2^{m}-1}+2^{k+am}x$$
Jeśli $w$ było długie, to możemy bezkarnie pomnożyć ten wynik przez $2^m-1$ niezmieniając jego parzystości

https://math.stackexchange.com/questions/1232463/how-to-prove-the-language-of-all-binary-numbers-that-are-prime-is-nonregular-usi tutaj dokończone
