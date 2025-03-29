> Niech $A=\{a^ib^jc^k\;:\;i\neq j\;\land i\neq k\;\land\;j\neq k\}$ i niech $B=\{a^ib^jc^k\;:\;i=j\;\lor\;j=k\}\cup L_{\Sigma^*(ba+ca+cb)\Sigma^*}$. Czy istnieje język bezkontekstowy $C$, który separuje $A$ od $B$? Wskazówka: skorzystaj z następnego zadania.

Nie wprost, załóżmy że taki CFL $C$ istnieje, a $k_L$ to jego stała z następnego zadania. Niech 
$$w=a^{k_l}b^{2k_L}c^{k}\in A.$$
Używam lemat o pompowaniu z zad. 61 dla literki $b\in\Sigma$.