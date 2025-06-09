> Niech $G=SL(3, \mathbb{Z})$ będzie grupą multiplikatywną macierzy $3\times 3$ o wyrazach całkowitych i wyznaczniku $1$. Załóżmy, że $G$ działa na drzewie $T$. 
> 1. Za pomocą (zmodyfikowanego) algorytmu eliminacji Gaussa pokaż, że $G$ jest generowana przez macierze $I+E_{ij}$ dla $1\leq i$, $j\leq3$ spełniających $i\neq j$, gdzie $I$ to macierz identycznościowa, zaś $E_{ij}$ - macierz elementarna z wyrazem $1$ w miejscu $(i,j)$ oraz wyrazami $0$ w pozostałych miejscach.
> 2. Pokaż, że jeśli $H$ jest skończenie generowaną grupą działającą na drzewie $T$ oraz $z\in[H,H]$ jest elementem należącym do centrum grupy $H$, to $z$ działa na $T$ jako izometria eliptyczna.
> 3. Oznaczamy generatory grupy $G$ przez $\{z_i\;:\;i\in\mathbb{Z}/6\mathbb{Z}\}$, gdzie 
>    $$\begin{matrix}z_0=I+E_{12},& z_1=I+E_{13},& z_2=I+E_{23}\\z_3=I+E_{21}&z_4=I+E_{31}&z_5=I+E_{32}\end{matrix}$$
>    Rozważając działanie podgrupy $H_i=\langle z_{i-1},z_{i+1}\rangle$ na drzewie $T$ uzasadnij, że $z_i$ działa jako izometria eliptyczna dla $i\in\mathbb{Z}/6\mathbb{Z}$
> 4. Wywnioskuj, że działanie grupy $G$ na $T$ jest eliptyczne.

1\. 
Zauważmy, że $(I+E_{ij})^{-1}=I-E_{ij}$ oraz jeśli $i<j$ (oraz $i$ oznacza wiersz), to 
$$(I+E_{ij})A$$
jest prawie tym samym co $A$, tylko do $i$-tego wierszu dodajemy wiersz $j$-ty. Jeśli $j<i$, to na odwrót: do $j$-tego wiersza dodajemy wiersz $i$-ty, czyli na przykładach
$$\begin{matrix}(I+E_{13})\begin{bmatrix}A_1\\A_2\\A_3\end{bmatrix}=\begin{bmatrix}A_1+A_3\\A_2\\A_3\end{bmatrix}&(I+E_{32})\begin{bmatrix}A_1\\A_2\\A_3\end{bmatrix}=\begin{bmatrix}A_1\\A_2\\A_2+A_3\end{bmatrix}\end{matrix}$$

$(I+E_{ij})^{-1}$ robi to samo, ale zamiast dodawać odejmuje.

Mając teraz dowolną macierz $A$ chcemy ją zredukować do macierzy identycznościowej.
- Co najmniej jeden wiersz ma niezerową pierwszą kolumnę. Możemy przesunąć wszystkie wiersze w dół przy pomocy macierzy
  $$\begin{bmatrix}0&0&1\\1&0&0\\0&1&0\end{bmatrix}$$
  tak, żeby to pierwszy wiersz miał niezerową wartość w pierwszej kolumnie.
- Jeśli inny wiersz również ma niezerową kolumnę, możemy dodać/odjąć go przy pomocy macierzy $(I+E_{ij})$ aż tylko pierwszy wiersz będzie miał niezerową pierwszą kolumnę.
- Mamy teraz dwa ostatnie wiersze z zerową pierwszą kolumną, wyznacznik to będzie wartość $a_{11}$ razy wyznacznik tego $2\times 2$ kwadratu w prawym dolnym rogu, stąd wiem, że
	- $a_{11}=1$
	- $a_{22}a_{33}-a_{32}a_{23}=1$.


- Jakiś wiersz musi mieć niezerową pierwszą kolumnę
- Jeśli dwa mają niezerową, dodaj/odejmij jeden od drugiego, żeby zmniejszyć ich sumę wartości bezwzględnych. Powtarzamy to aż tylko jeden będzie niezerowy
- Możemy spermutować wiersze tak, żeby ten z niezerową pierwszą kolumną był pierwszy, np. macierz
  $$\begin{bmatrix}0&0&1\\1&0&0\\0&1&0\end{bmatrix}$$
  przesuwa wszystkie wiersze w dół o jeden.
- Powtarzamy to samo dla drugiej kolumny, tzn. dodajemy/odejmujemy wiersze $2$ i $3$ aż tylko jeden z nich będzie miał niezerowy wyraz.
- Jeśli to drugi wiersz ma niezerowy wyraz, to super.  Jeśli to trzeci miał niezerowy wyraz, to dodajemy go do wiersza $2$ , po czym odejmujemy drugi od trzeciego.
- Zostaje nam macierz górnotrójkątna, bo pierwszą kolumnę ma niezerowy tylko pierwszy wiersz, a drugią kolumnę ma niezerową co najwyżej drugi wiersz.
- Wyznacznik macierzy górnotrójkątnej to iloczyn wyrazów na przekątnej, czyli tutaj muszą to być tylko $1$, bo inaczej nie jesteśmy w $SL(3, \mathbb{Z})$
- Wystarczy drugim wierszem wymazać wyraz $a_{1,2}$, a trzecim wierszem wymazać wyrazy $a_{1,3}$ i $a_{2,3}$.
Dostajemy identyczność.

--- 

2\. 

---

3\. 
Po pierwsze, szybkie wyliczenia dają
$$\begin{matrix}
z_0z_2z_0^{-1}z_2^{-1}=z_1\\ 
z_1z_3z_1^{-1}z_3=z_2^{-1}\\ 
z_2z_4z_2^{-1}z_4^{-1}=z_3\\ 
z_3z_5z_3^{-1}z_5^{-1}=z_4^{-1}\\
z_4z_0z_4^{-1}z_0^{-1}=z_5\\ 
z_5z_1z_5^{-1}z_1^{-1}=z_0^{-1}
\end{matrix}$$
czyli $z_i\in [H_i, H_i]$ i wystarczy pokazać, że $z_i\in Z(H_i)$, ale to wystarczy na generatorach $H_i$, a to widać i odmawiam wypisywania, że zawsze
$$z_iz_{i-1}z_i^{-1}=z_{i-1}$$


---

4\.



