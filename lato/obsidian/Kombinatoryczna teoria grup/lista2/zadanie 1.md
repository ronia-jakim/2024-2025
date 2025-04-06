> Niech $S$ będzie zbiorem oraz $R\subseteq F(S)$. Pokaż, że najmniejszy dzielnik normalny grupy $F(S)$ zawierający $R$ ma postać
> $$N_R=\{g_1r_1^{\varepsilon_1}g_1^{-1}...g_kr_k^{\varepsilon_k}g_k^{-1}\;:\;g_i\in F(S),r_i\in R,\varepsilon_i\in\{-1,1\}\}$$

>[!tip] Podgrupa normalna
>  Podgrupa $N\leq G$ jest normalna, jeśli jest niezmiennicza na sprzężenia, tzn.
>  $$(\forall\;g\in G)\;gNg^{-1}=N$$

To, że $N_R$ jest dzielnikiem normalnym oraz że zawiera $R$ raczej widać.

Załóżmy teraz nie wprost, że istnieje $R\subseteq N\subsetneq N_R$, będący dzielnikiem normalnym $F(S)$. 

Zacznijmy od popatrzenia na małe przypadki. 
Jeśli $g_1r^\varepsilon g_1^{-1}\in N_R$ ale nie w $N$, to mamy sprzeczność, bo $r\in N$. 
Co w takim razie, jeśli $g_1r_1^{\varepsilon_1}g_1^{-1}g_2r_2^{\varepsilon_2}g_2^{-1}\in N_R-N$? Z poprzedniego punktu wiemy, że $g_ir_i^{\varepsilon_i}g_i^{-1}\in N$ dla wszystkich $r_i\in R$ oraz wszystkich $g_i\in F(S)$, więc w sumie to jestem w domu, bo to jest iloczyn tych pyśków, a dzielniki normalne to grupy. Czyli to leci z indukcji xd