>[!tip] gramatyka bezkontekstowa
> <span style="color:rgb(192, 0, 0)">Gramatyka bezkontekstowa</span> (CFG) to krotka $( N,\Sigma,S,\pi )$ taka, że 
> - $N$ jest skończonym zbiorem znaków specjalnych, czyli nie-literek,
> - $S\in N$ jest znakiem początkowym,
> - $\pi\subseteq N\times(N\cup \Sigma)^*$ jest skończoną relacją (zasadą)
> - $N\cap \Sigma=\emptyset$, czyli zbiór znaków specjalnych jest rozłączny z alfabetem

Dla danej bezkontekstowej gramatyki $G=(N,\Sigma, S, \pi)$ oznaczamy 
$$\overline{L_G}:=\{w\in (N\cup \Sigma)^*\;:\;S\xrightarrow[\pi]{*}w\},$$
natomiast jako $L_G$ rozumiemy język zawarty w $\overline{L_G}$:
$$L_G=\overline{L_G}\cap \Sigma^*.$$

>[!tip] język bezkontekstowy
> Powiemy, że język $L\subseteq\Sigma^*$ jest bezkontekstowy (CFL), jesli istnieje CFG $G$ takie, że $L=L_G$.

>[!info] Uwaga
> Każdy język regularny jest językiem bezkontekstowym

**Dowód**
Wystarczy pokazać, że klasa języków CFL spełnia warunki z [[Języki regularne#^klasajezykowregularnych|uwagi]] 
1. dla każdego języka skończonego $L$ wystarczy dodać do CFG zasadę $S\to w$ dla $w\in L$
2. zamkniętość na:
	a. sumę języków: dla $L_G$ oraz $L_H$ bierzemy jako gramatykę sumę rozłączną $G\sqcup H$ i dodajemy do niej reguły $(S, S')$ oraz $(S, S'')$, gdzie $S'$ to symbol początkowy $G$ a $S''$ - początkowy $H$
	b. konkatenację: ???
	c. gwiazdkę: ???

#### przykłady
1. $S\to aSa\;|\;bSb\;|\;\varepsilon$ oznacza, że reguła $\pi$ to
   $$ \pi = \{(S, aSa), (S, bSb), (S, \varepsilon)\}$$
   ta gramatyka daje język palindromów o parzystej długości
2. $S\to SS\;|\;\varepsilon\;|\;aSb\;|\;bSa$ to język słów, które mają tyle samo literek $a$ co $b$
3. $S\to (S)\;|\;[S]\;|\;SS\;|\;\varepsilon$ z kolei wykryje poprawne nawiasowania przy użyciu $[,],(,)$

> [!tip] postać normalna Chomskiego
> CFG $G=(N,\Sigma, S,\pi)$ jest w **postaci normalnej Chomskiego**, gdy każda produkcja z $\pi$ jest postaci 
> - $A\to BC$ dla $A,B,C\in N$ lub 
> - $A\to a$ dla $A\in N$ oraz $a\in\Sigma$.

Ważne jest to, że gramatyka w postaci normalnej Chomskiego to <span style="color:rgb(146, 208, 80)">drzewo binarne</span>

> [!tip] Twierdzenie Chomskiego
> Dla każdego CFL $L$ istnieje $CFG$ $G$ w postaci Chomskiego, takie, że $L=L_G$ (modulo puste słowo)

> [!tip] lemat o pompowaniu
> Dla każdego CFL $L$ istnieje $n\in\mathbb{N}$ takie, że dla każdego $w\in L$, $|w|\geq n$ istnieją słowa $s,z,t,y,x$ takie, że $|zty|\leq n$, $|zy|>0$, $w=sztyx$ dla każdego $k\in\mathbb{N}$ $sz^kty^kx\in L$

Intuicja dowodu i lematu:
![[Pasted image 20250329124259.png]]

>[!tip] automat ze stosem
> Niedeterministyczne automat ze stosem (NPDA - nondeterministic push down automaton) to krotka
> $$A=(\Sigma, Q, q_0, S, Z, \delta),$$
> gdzie
> - $\Sigma$ to alfabet skończony
> - $Q$ to zbiór stanów jak zawsze
> - $q_0\in Q$ to stan początkowy
> - $S$ to stos zbiór rzeczy, które mogę wrzucać na stos
> - $Z$ to permanentne dno stosu
> - $\delta\subseteq (Q\times (\Sigma\cup\{\varepsilon\})\times S)\times (Q\times S^*)$ to klasyczna relacja przejścia

$\delta$ wie gdzie skończyliśmy w $Q$, wie jaką teraz chcemy krawędzią z $\Sigma\cup\{\varepsilon\}$ przejść i co z $S$ jest na górze stosu. Ściąga tę ostatnią rzecz ze stosu (chyba, że to $Z$) i na nią patrzy. Na podstawie tego przechodzimy do $Q$ i nawlekamy nowe rzeczy na stos. Czyli jeden element ze stosu może nam obrodzić w więcej elementów wrzucanych na stos.

#### przykład automatu ze stosem

Język palindromów parzystych jest rozpoznawany automatem ze stosem o funkcji przejścia
- $\delta([q_1, B, A], [q_1, AB])$ -> jeśli ostatnią rzeczą na stosie jest $A$, a teraz wczytujesz $B$, to wrzuć na stos $AB$ i wczytuj dalej
- $\delta([q_1,\varepsilon, A], [q_2, A])$ -> zgadujemy, że jesteśmy w środku słowa i przełączamy się z dorzucania na stos (stan $q_1$) na zdejmowanie ze stosu (stan $q_2$)
- $\delta([q_2, A, A], [q_2, \varepsilon])$ jeśli na stosie jest to samo co wczytuję, to zdejmuję ze stosu i wczytuję dalej
- wpp. wybuchnij żuczka

> [!info] uwaga
> Niedeterministyczne automaty ze stosem są równoważne gramatykom bezkontekstowym


