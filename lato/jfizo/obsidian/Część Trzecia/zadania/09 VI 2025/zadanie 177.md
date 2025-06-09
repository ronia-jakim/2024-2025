> Mam wielomianowy algorytm zwracający dla grafu $\{\chi(G), \chi(G)+1\}$ - liczbe chromatyczna, lub l. chromatyczna $+1$. Pokazać, że wtedy $P=NP$

Weźmy sobie graf $G$ i zróbmy nowy graf $G'=G\sqcup G$, gdzie łączę każdy wierzchołek lewej kopii z każdym wierzchołkiem prawej kopii. Mamy $\chi(G')=2\chi(G)$. Odpalam na nowym grafie algorytm, dostaję $2\chi(G)$ lub $2\chi(G)+1$. Łatwo sprawdzić (parzystością), co dostałam. W ten sposób wyliczam $\chi(G)$ i kończę całą sprawę.

W ten sposób 3-col jest w P.