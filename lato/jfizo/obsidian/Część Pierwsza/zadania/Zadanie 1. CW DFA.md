> Rozważmy język $L=\{w0s\;:\;|s|=9\}$, złożony z tych słów nad alfabetem $\{0,1\}$ których dziesiąty symbol od końca to $0$. Udowodnij, że DFA rozpoznający ten język ma co najmniej 1024 stany.

Niech $A=(Q, q_0,\Sigma, \delta, F)$ będzie najmniejszym DFA rozpoznającym ten język, czyli $L_A=L$. Załóżmy nie wprost, że ma on co najwyżej 1023 stany.

Rozważmy ciąg słów $w_i$ będący wszystkimi możliwymi ciągami $0$ i $1$ długości $10$. Takich słów jest $2^{10}=1024$ sztuk. 

Z zasady szufladkowej wie[[]]my, że istnieją dwa różne słowa, $w_i$ oraz $w_j$, dla których automat $A$ kończy w tym samym stanie, $\delta(w_i,q_0)=\delta(w_j,q_0)$. Ponieważ są to różne słowa, to musi istnieć indeks $k$ na którym się różnią, tzn. $w_i(k)\neq w_j(k)$. BSO załóżmy, że $w_i(k)=0$, a $w_j(k)=1$. 

Chcemy teraz dokleić do tych słów taki sam sufiks $x=1^{k}$, który sprawia, że $w_ix$ jest akceptujące, ale $w_jx$ już nie. Dostajemy sprzeczność, bo $w_i$ oraz $w_j$ kończą w tym samym stanie, tzn.
$$\delta(w_i, q_0)=\delta(w_j, q_0),$$
ale
$$\delta(x, \delta(w_i, q_0))\in F$$
$$\delta(x, \delta(w_j, q_0))\notin F$$
