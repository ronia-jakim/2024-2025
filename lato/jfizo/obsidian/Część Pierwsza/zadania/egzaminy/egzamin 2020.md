>**Zadanie 1.** Pokaż, że istnieje niedeterministyczny automat skończony $A$ nad pewnym alfabetem $\Sigma$, mający nie więcej niż $20$ stanów, taki, że każde słowo nad $\Sigma$ mające długość nie większą od $100$ należy do $L_A$, ale że $L_A\neq\Sigma^*$. 

Kilka pierwszych liczb pierwszych i słowa długości niepodzielnej przez ich iloczyn -> wtedy długość musi niedzielić się przez jedną i to jest kilka pętelek :3

>**Zadanie 2.** Niech $L\subseteq\{a,b\}^*$  będzie językiem regularnym dającym się rozstrzygnąć deterministycznym automatem skończonym o $n$ stanach. Pokaż, że język takich słów $w\in\{a,b\}^*$ że istnieje $v$ o długości będącej wielokrotnością długości słowa $w$, takie, że $wv\in L$ daje się rozstrzygać przy pomocy DFA o wykładniczej względem $n$ liczbie stanów. 



>**Zadanie 3.** Dla danego języka $L\subseteq\{a,b,c\}^*$ niech $L_{(2)}=\{wv\in\{a,b,c\}^*\;:\;|v|=|w|\;\land\;w\in L\}$. Czy z tego, że $L$ jest CFL wynika, że $L_{(2)}$ jest CFL?

CFL nie są zamknięte na przekrój, bo zjadanie ze stosów czy coś.