> Udowodnij, że zbiór $A=\{n\;:\;Dom(\phi_n)=\mathbb{N}\}$ nie jest rekurencyjnie przeliczalny.

Po pierwsze, zbiór 
$$K^c=\mathbb{N}-K=\{n\;:\;\phi_n(n)=\perp\}$$
nie może być rekurencyjnie przeliczalny, bo inaczej z uwagi [[zbiory rekurencyjne#^alboAalboNbezA|jeśli A oraz N-A są r.e., to oba są rekurencyjne]] zbiór $K$ byłby rekurencyjny.  

Teraz chciałabym napisać funkcję $f:\mathbb{N}\to \mathbb{N}$ taką, że $n\in K^c\iff f(n)\in A$. 