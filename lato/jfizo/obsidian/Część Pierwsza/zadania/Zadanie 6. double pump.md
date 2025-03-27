>Dla danego słowa $w$ nad pewnym ustalonym alfabetem, niech $w^R$ oznacza "$w$ czytane od końca", tzn. $\varepsilon^R=\varepsilon$ oraz $(aw)^R=w^Ra$, jeśli $a$ należy do alfabetu, zaś $w$ jest dowolnym słowem.

> Czy język $L=\{ww^Rx\;:\;w,x\in\{0,1\}^*\;\land\;w,x\neq\varepsilon\}$ jest regularny? 

nie

Pompując słowa
$$(10)^k(01)^k1$$
dla dostatecznie dużego $k$ będziemy musieli mieć $xy$ w tej pierwszej części, tzn. w $(10)^k$ i wtedy taki wydłużony prefiks nie ma tej części odwrotnej

> Czy język $L=\{xwx\;:\;w,x\in\{0,1\}^*\;\land\;x\neq\varepsilon\}$ jest regularny?

nie

Pompujemy słowo 
$$(010)^k11(010)^k11$$
albo latwiej
$$0^k10^k1$$