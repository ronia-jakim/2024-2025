> Powiemy, że semiproces Thuego jest prawie bezkontekstowy, jeśli dla każdej pary $(w, v)\in \Pi$ jedno ze słów $w$ i $v$ składa się tylko z jednej litery, drugie zaś z dwóch liter. Czy problem słów dla prawie bezkontekstowych semiprocesów Thuego jest rozstrzygalny?

Heura mówi, że nie jest rozstrzygalne.

Dostaję $(w,v,\Pi)$ i chce zwrócić $(w',v',\Pi')$, ale $\Pi'$ jest jak w zadaniu.
Zaczynamy od zmiany $\Sigma$
$$\Sigma'=\Sigma\cup\{l,r',l',r\;:\;(l,r)\in \Pi,\;l'\subseteq l, r'\subseteq r\text{ to podsłowa}\}\cup\{\star\}.$$

$\Pi'$ ma reguły, które
- biorą literki $l,r_1,r_2$ takie, że $(l,r_1r_2)\in\Pi$
- biorą literki $r, l_1,l_2$ takie, że $(l_1l_2,r)\in\Pi$
- rozbijają literkę $l$ na $l_1l_2$, gdzie $l=l_1l_2$
- sklejają dwie literki $l_1,l_2$ w $l=l_1l_2$
- analogicznie dla prawej strony
- jeśli $(a,b)\in\Pi$ i $a,b\in\Sigma$, to chcę mieć regułę $(a, b\star)$ oraz $(a\star, b)$ 
- i do niej muszę doparować jakieś $(a\star, a)$ oraz $(a, a\star)$