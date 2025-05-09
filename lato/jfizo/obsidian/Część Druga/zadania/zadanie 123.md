> Udowodnij, że nie istnieje algorytm rozstrzygający, dla danej gramatyki bezkontekstowej $G$ i alfabetu $A$, czy $A^*=L(G)$.

Zamiast gramatyki bezkontekstowej chcemy użyć niedeterministycznego automatu ze stosem.

Zrobimy reduckję z $K^c$, z dopełnienia problemu stopu maszyny Turinga. Tj. mając maszynę Turinga chcemy stworzyc algorytm, który rozpoznaje słowa nienależące do $L(G)$. 

Dostajemy historię maszyny Turinga jako ciąg stringów równej długości (wypełniamy blankami) rozdzielonych wykrzyknikami, gdzie co drugi jest odwrócony (przyda się do przejścia z $k$ do $(k+1)$), tj. coś takiego
$$!C_1!C_2^R!C_3!C_4^R!.$$

Na wejściu zgadujemy, jaki błąd się pojawił (niedeterminizm). Możliwości to
1. błąd formatu, tj. więcej niż jeden ! pod rząd lub różne długości
2. wejściowa konfiguracja jest zła modulo blanki na końcu (kontrastujemy z tym, co mamy zapisane w pamięci jako pierwsza)
3. ostatnia konfiguracja jest zła (nie ma $q_F$ lub jest więcej niż jedno $q$)
4. przejście z $k$ do $(k+1)$ jest niepoprawne
	- wrzucamy $k$-tą konfigurację na stos
	- potem idąc $k+1$-szą konfiguracją patrzymy, czy wszystko jest lokalnie OK jak w kafelkowaniu (patrzymy na 3 obok)
