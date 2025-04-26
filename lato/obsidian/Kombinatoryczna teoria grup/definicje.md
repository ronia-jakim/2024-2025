## drzewa

>[!tip] długość translacyjna, min-zbiór
Niech $\phi:T\to T$ będzie izometrią drzewa $T$. 
>**Długość translacyjną** $\phi$ definiujemy jako 
>$$\tau(\phi):=\inf d_T(x, \phi(x)).$$
>Zbiór punktów, dla których jest ona osiągana nazywa się z kolei **min-zbiorem** izometrii:
>$$Min(\phi)=\{x\in T\;:\;d_T(x, \phi(x))=\tau(\phi))\}.$$
>^dlugosc-translacyjna-def

>[!tip] izo. eliptyczna i hiperboliczna
> Powiemy, że $\phi$ jest **eliptyczna**, jeśli $\tau(\phi)=0$. W przeciwnym wypadku jest **hiperboliczna**.
> ^izometria-eliptyczna-hiperboliczna
- $\phi$ eliptyczna $\implies$ $Min(\phi)=Fix(\phi)$ jest poddrzewem lub środkiem krawędzi (punkt równo między dwoma krawędziami)
- $\phi$ hiperboliczma $\implies$ $Min(\phi)$ to linia, na której $\phi$ działa przez translację o $\tau(\phi)$
**oś izometrii hiperbolicznej** to linia $Min(\phi)$.