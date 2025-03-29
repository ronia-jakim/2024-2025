> Pokaż, że istnieje ciąg języków $\{L_i\}$ oraz stałe $c,k>0$ takie, że każdy $L_i$ daje się rozstrzygać przy pomocy ONFA o nie więcej niż $ki$ stanach, ale żaden $L_i$ nie daje się rozstrzygać przy pomocy DFA o mniej niż $2^{ci}$ stanach

$\Sigma_i=\{1,...,i\}$ oraz ciąg języków $L_i=\{w\;:\;(\exists\;i)\;|w|_i=0\}$, czyli istnieje literka występująca zero razy. 

W DFA potrafię wskazać rodzinę $2^i$ słów (wszystkie podsłowa $1...i$), które mają różne klasy abstrakcji. Stąd DFA ma co najmniej $2^i$ stanów. 

W ONFA obstawiam, która literka się nie pojawi, a potem albo cyklę się w początkowym-akceptującym stanie, albo wybucham jak się pojawi. Czyli
$$Q=\{1,..., i\}\cup\{\star\}$$
$$Q_0=\{1,...,i\}$$
$$F=Q_0$$
$$\delta(q,a)=\begin{cases}\star & q=a\;\lor\;q=\star\\ q\end{cases}$$