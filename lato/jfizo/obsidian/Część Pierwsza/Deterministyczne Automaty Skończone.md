Automat skończony to graf skierowany o krawędziach etykietowanych literami z alfabetu, po którym chodzi żuczek myślący literka po literce ze słowa. Na DFA składają się:
- <b style="color:rgb(146, 208, 80)">zbiór stanów</b> $Q$, w których żuczek może się znaleźć w trakcie podróży po grafie; inaczej - wierzchołki grafu $A$,
- <b style="color:rgb(146, 208, 80)">stanu początkowego</b> $q_0\in Q$, w którym żuczek zaczyna swoją przygodę,
- <b style="color:rgb(146, 208, 80)">stanów akceptujących</b> $F$, w których kończąc żuczek się cieszy,
- <b style="color:rgb(146, 208, 80)">funkcji przejścia</b> $\delta:Q\times\Sigma\to Q$, która mówi żuczkowi jak powinien pójść wiedząc, gdzie skończył i jaką teraz literkę czyta.

**Puste słowo** oznaczamy zazwyczaj literką $\varepsilon$.

Mając funkcję przejścia czytającą literki wygodnie jest zdefiniować rekurencyjnie funkcję czytającą całe słowa, $\hat{\delta}:Q\times\Sigma^*\to Q$
$$\begin{cases}\hat{\delta}(q,\varepsilon)=q\\\hat{\delta}(q, wa)=\delta(\hat{\delta}(q,w),a)&w\in\Sigma^*,a\in\Sigma\end{cases}$$

Dla automatu $A=(Q,q_0,\Sigma,\delta,F)$ przez $L_A$ rozumiemy język rozpoznawany przez ten automat, czyli
$$L_A=\{w\in\Sigma^*\;:\;\hat{\delta}(q_0, w)\in F\}$$

<b style="color: rgb(146, 208, 80)">Język regularny</b> to język, dla którego istnieje automat DFA rozpoznający go.

## operacje na DFA

Niech $A$, $B$ będą automatami DFA takimi, że $|A|=n$, $|B|=m$

| operacja  | ilość stanów automatu |
| --------- | --------------------- |
| $A\cup B$ | $O(n\cdot m)$         |
| $A\cap B$ | $O(n\cdot m)$         |
| $A^c$     | $O(n)$                |
| $A^R$     | $O(2^n)$              |

>[!tip] hipoteza Cernego
>Dla danego skończonego DFA $A=(\Sigma, Q, q_0, F, \delta)$ i zbioru $S\subseteq Q$ oznaczmy
>$$sync(S)=\{w\in\Sigma^*\;:\;(\forall\;q,q'\in S)\;\delta(q, w)=\delta(q', w)\}.$$
>Hipoteza mówi, że jeśli zbiór $sync(Q)$ jest niepusty, to zawiera on jakieś słowo o długości nie większej niż $(|Q|-1)^2$.  

