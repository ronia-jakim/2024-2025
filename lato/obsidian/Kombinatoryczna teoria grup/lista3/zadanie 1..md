> Niech $T$ będzie drzewem, a $T_1,...,T_n\subseteq T$ - skończoną kolekcją poddrzew. Pokaż, że jeśli $T_i\cap T_j\neq \emptyset$ dla wszystkich $1\leq i<j\leq n$, to $\bigcap _{i=1}^nT_i\neq\emptyset$.

Obserwacja 1: przekrój dowolnych dwóch poddrzew jest poddrzewem.
- cyklenie się przekroju odpada od razu, bo nie ma cyklów w dużym drzewie
- spójność przekroju wynika z jedyności ścieżki między dowolnymi dwoma wierzchołkami: gdyby przekrój miał dwie komponenty spójności, to dowolna para punktów z różnych komponent przekroju jest połączona jedyną ścieżką, której nie ma w jednym z poddrzew, więc nie jest ono spójne

Wyciągamy więc pałkę indukcyjną, która jest trywialna dla $n=2,1$. Zakładamy teraz, że $\bigcap_{i=1}^nT_i\neq\emptyset$ i dokładamy drzewo $(n+1)$. 