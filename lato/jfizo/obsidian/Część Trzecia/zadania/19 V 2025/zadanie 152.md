>Pokaż, że każdy zbiór w NP jest rzutem pewnego zbioru z P. To znaczy, jeśli $B$ jest w NP, to istnieje wielomian $p$ i zbiór $A\subseteq\mathbb{N}^2$ należący do P i taki, że
>$B=\{n\;:\;\exists\;m\;|m|\leq p(|n|)\text{ i }(n,m)\in A\}$

Tutaj chcemy do $n\in B$ dokleić jak długą ścieżkę w $B$ znajdziemy i jakie po kolei wybory na niej robimy. Wtedy wielomian dla tak wytworzonego $A$ będzie przeskalowanym (o największą możliwą ścieżkę razy wielkość podpowiedzi) wielomianem $B$. 

Konstruujemy zbiór $A=\{(n,m)\;:\;n\in B\;\land\;p_B(n)a_1...a_{p_B(n)}\}$, gdzie druga współrzędna to ile kroków w $B$ zrobimy sprawdzając $n$ i zlepka kolejnych kroków, jakie robi automat $B$.