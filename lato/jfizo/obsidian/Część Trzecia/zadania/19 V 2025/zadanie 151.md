>Pokaż, że jeśli zbiór $A\subseteq\mathbb{N}^2$ jest w P i $p$ jest wielomianem, to zbiór
>$\{n\;:\;\exists\;m\;|m|\leq p(|n|)\}$
>czyli rodzaj rzutu $A$ na pierwszą oś, jest w NP.

Zgaduję $m$ takie, że $|m|\leq p(|n|)$ i sprawdzam w maszynce niedeterministycznej $A$, czy $(n,m)\in A$.
Jeśli zrobię więcej kroków niż zgadnięte $|m|$ to wywalam.