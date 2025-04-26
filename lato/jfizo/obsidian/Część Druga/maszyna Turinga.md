>[!tip] słowa Thuego
>Niech $\Sigma$ będzie alfabetem skończonym i wybierzmy skończony podzbiór $\Pi\subseteq \Sigma^*\times\Sigma^*$. Definiujemy relację na $\Sigma*$
$$w\xrightarrow{\Pi} v\iff (\exists\;w_1,w_2\in\Sigma^*,\;(l,r)\in\Pi)\;w=w_1lw_2\;\land\;v=w_1rw_2$$
której przechodnie domknięcie oznaczamy jako $w\xrightarrow{*\Pi}v$, a równoważnościowe domknięcie - $w\xleftrightarrow{*\Pi}v$.

### Na maszynę Turinga składa się
- taśma, którą idziemy od lewej do prawej, na które piszemy symbole ze zbioru $A=\{\alpha, \omega, 0, 1, B\}$, gdzie
	- $B$ to blank, oznaczający że coś na taśmę trzeba zapisać
	- $\alpha$ to symbol końca taśmy, nie można go napisać, zamazać ani pójść na lewo stojąc na $\alpha$
	- $\omega$ to start wyjścia, czyli wszystko na prawo od niego traktujemy jako wynik końcowy
- $Q$ - skończony zbiór stanów z wyróżnionym stanem początkowym $q_0\in Q$ oraz końcowym $q_F\in Q$, z którego nie można już wyjść
- $\delta:Q\times A\to Q\times A\times\{L,R\}$ funkcja przejścia, która 
	- przyjmuje aktualny stan oraz literkę pod żuczkiem na taśmie
	- zwraca nowy stan, co napisać pod żuczkiem na taśmie oraz czy żuczek rusza się w Lewo, czy w pRawo

Startowa konfiguracja taśmy to żuczek na $\alpha$, słowo input na prawo od $\alpha$ do $\omega$, a na prawo od $\omega$ same blanki (czyli $B$).  
**Konfiguracja taśmy** to informacja o
- tym gdzie jest żuczek,
- co widzi pod sobą oraz
- aktualny stan taśmy

>[!tip] teza Churcha
>Każdy algorytm (program) daje się przedstawić jako maszyna Turinga.


>[!tip] nierozstrzygalność problemu słów Thuego
>Problemy pytające czy zbiory
>$$ST=\{(w,v,\Pi)\;:\;w\xrightarrow{*\Pi}v\}$$
>$$T=\{(w,v,\Pi)\;:\;w\xleftrightarrow{*\Pi}v\}$$
>są skończone są nierozstrzygalne.

**Dowód** tego pierwszego, czyli SemiThue.

Będziemy pokazywać,  że $K\leq ST$, czyli szukamy funkcji $f:\mathbb{N}\to\mathbb{N}$ takiej, że 
$$n\in K\iff f(n)\in ST$$

Dostajemy więc $n$ oraz $M_n$, czyli maszynę Turinga odpowiadającą $\phi_n$, i chcemy zwrócić $(w,v,\Pi)$ takie, że 
$$n\in K\iff w\xrightarrow{*\Pi}v$$
Jako alfabet weźmy $\Sigma=Q\cup A\cup\{\star\}$. $\star$ będziemy używać jako litery-pożeracza.

Naszą maszynę $M_n$ karmimy liczbą $n$, bo to jest równoważne z karmieniem $\phi_n$ liczbą $n$. Stąd pierwszym słowem jest 
$$w=\alpha\underbrace{.......n........}_{n \text{ zapisane unarnie}}\omega B.$$
Jest potencjalnie wiele konfiguracji końcowych, czyli takich, że żuczek stoi nad taśmą z $w_F$ w móżdżku. Stąd chcemy to upraszać, znaczek po znaczku konfiguracji, i zawsze kiedy w konfiguracji widzimy, że żuczek myśli o $q_F$, my zamieniamy to w $\star$. Czyli
$$v=\star$$

Jest mały problem, bo potrzebujemy jeszcze w naszych słowach wiedzieć, o czym myśli żuczek i gdzie jest. Przyjmiemy więc konwencję, że jednak słowo $w$ to 
$$w=\alpha q_0\underbrace{.......n........}_{n \text{ zapisane unarnie}}\omega B$$
i zawsze po prawej jest aktualny stan żuczka.

Niech $\Pi$ będzie takie, że dla
- $\delta(q,a)=(q',a', L)$ mamy $(aq, q'a')\in\Pi$
- $\delta(q, B)=(q',a', L)$ mamy $(Bq, q'a'B)\in\Pi$  (słowa są skończone, chcemy nowego blanka)
- $\delta(q,a)=(q',a',R)$ dodajemy $(\forall\;b\in A)$ $(aqb,a'bq)\in \Pi$ 
- $\delta(q,b)=(q', a, R)$ mamy $(Bq, aBq')\in\Pi$
- dodajemy $(q_F,\star)\in\Pi$, czyli jak nam się uda skończyć, to informujemy o tym słowo
- każdego $a\in A$ dodajemy do $\Pi$ pary $(a\star, \star)$ oraz $(\star a,\star)$ skoro już jedna gwiazdka się pojawiła, to możemy zwinąć słowo do pojedynczej gwiazdki nie patrząc na końcową konfigurację taśmy.
