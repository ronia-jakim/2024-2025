> [!tip] funkcja rekurencyjna
> **Funkcja rekurencyjna** to relacja wejścia-wyjścia dla programu.
> **Całkowita f.r.** to funkcja rekurencyjna, która nie zapętla się

>[!info] uwaga
>Zbiór $A$ jest rekurencyjnie przeliczalny, jeśli istnieje funkcja rekurencyjna, której obrazem jest $A$.

>[!tip] redukcja
>Niech $A, B\subseteq\mathbb{N}$, wtedy $A\leq  B$ jeśli $A$ jest nietrudniejszy od $B$. Tzn.  istnieje $f:\mathbb{N}\to\mathbb{N}$ takie, że
>$$(\forall\;n\in\mathbb{N})\;n\in A\iff f(n)\in B$$

Np. jeśli chcemy udowodnić, że $B$ jest nierekurencyjny, to możemy wziąć $A=K$ i napisać funkcję $\mathbb{N}\to \mathbb{N}$ redukujące $B$ do patrzenia na $K$. 

>[!info] Uwaga
>Redukcja jest relacją równoważności zachowującą rekurencyjność (przeliczalną). Dodatkowo, zbiory rekurencyjne są w jednej klasie abstrakcji.

>[!tip] $K$ jest zupełny
>Zbiór
>$$K=\{n\;:\;\phi_n(n)\in \mathbb{N}\}$$
>jest **zupełny** w klasie zbiorów rekurencyjnie przeliczalnych ze względu na całkowite redukcje rekurencyjne, tzn. 
>$$(\forall\;B\text{ rekurencyjnie przeliczalnego})\;B\leq K.$$

