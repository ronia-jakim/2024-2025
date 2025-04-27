> Niech $T$ będzie drzewem, a $T_1,...,T_n\subseteq T$ - skończoną kolekcją poddrzew. Pokaż, że jeśli $T_i\cap T_j\neq \emptyset$ dla wszystkich $1\leq i<j\leq n$, to $\bigcap _{i=1}^nT_i\neq\emptyset$.

Obserwacja 1: przekrój dowolnych dwóch poddrzew jest poddrzewem.
- cyklenie się przekroju odpada od razu, bo nie ma cyklów w dużym drzewie
- spójność przekroju wynika z jedyności ścieżki między dowolnymi dwoma wierzchołkami: gdyby przekrój miał dwie komponenty spójności, to dowolna para punktów z różnych komponent przekroju jest połączona jedyną ścieżką, której nie ma w jednym z poddrzew, więc nie jest ono spójne

Wyciągamy więc pałkę indukcyjną, która jest trywialna dla $n=2,1$. Mniej trywialny jest przypadek $n=3$, więc popatrzmy na niego.

Załóżmy nie wprost, że $T_1\cap T_2\cap T_3=\emptyset$. Niech $x_1\in T_1\cap T_2$, $x_2\in T_2\cap T_3$ oraz $x_3\in T_3\cap T_1$. Niech $P_1$ będzie ścieżką od $x_1$ do $x_3$ w drzewie $T_1$. Analogicznie $P_2$ niech idzie od $x_2$ do $x_1$ w $T_2$ i $P_3$ od $x_2$ do $x_3$ w $T_3$. 
Ponieważ przekrój drzew jest pusty, to również $P_i\cap P_2\cap P_3=\emptyset$, tzn. tworzą bardzo cyklowy cykl, który w drzewach jest nielegalny. 
Stąd tak być nie może.

Zakładamy teraz, że wszystkie przekroje co najwyżej $n$ drzew spełniających warunki zadania są takie jak trzeba. Weźmy $(n+1)$ drzew.
Z obserwacji 1 wynika, że $T_i\cap T_{n+1}$ jest zawsze drzewem, i jest ich $n$ sztuk. 
Chcemy użyć przypadku trzech drzew dla
$$T_i\cap T_{n+1},\quad T_j\cap T_{n+1},\quad T_{n+1}$$
gdzie $i<j<n+1$, żeby upewnić się, że moje nowe drzewa $T_i'=T_i\cap T_{n+1}$ spełniają warunek zadania, tzn. $T_i'\cap T_j'\neq\emptyset$ (bo z przypadku $n=3$ wynika, że $T_i\cap T_j\cap T_{n+1}\neq\emptyset$).
Mam teraz $n$ drzew $T_i'$, które mają niepuste przekroje i mogę do nich użyć tezy indukcyjnej, żeby powiedzieć, że
$$\emptyset\neq \bigcap_{i\leq n} T_i'=\bigcap_{i\leq n}[T_i\cap T_{n+1}]=\bigcap_{i\leq n+1}T_i.$$
![[duck.png|100]]