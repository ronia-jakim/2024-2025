> **a.** Zauważ, że problem stopu dla maszyn podobnych do automatu ze stosem, lecz posiadających dwa stosy jest nierozstrzygalny. Dokładniej mówiąc, instancją problemu jest teraz lista instrukcji dla automatu o dwóch stosach, ale bez taśmy wejściowej. W jednym kroku obliczenia automat, w zależności od tego co widzi na stosach, modyfikuje stan i stosy. Pytamy o to, czy automat uruchomiony w stanie $q_0$ i przy dwóch pustych stosach, kiedykolwiek się zatrzyma. 
> **b.** Wywnioskuj z **a**, że analogiczny problem pozostaje nierozstrzygalny, jeżeli dwa stosy zastąpimy czterema licznikami (tzn. stosami o jednym symbolu stosowym, nie licząc symbolu dna stosu)
> **c.** Wywnioskuj z **b**, że analogiczny problem pozostaje nierozstrzygalny, jeżeli cztery liczniki zastąpimy dwoma (taki automat, z dwoma licznikami, nazywa się Maszyną Minsky'ego).

**a.** Teraz mamy żuczka, który zamiast po grafie DFA chodzi po automacie ze stosem. 

Jeśli dostaniemy $n$-tą maszynę Turinga $M_n$ z pustą taśmą, to nierozstrzygalny jest problem stopu. Można zrobić redukcję z $K$ - dokładamy sztuczne stany, które pisza $n$ na inpucie. 

Idąc w prawo przekładamy na lewy stos to co jest na górze prawego, a idąc w lewo przekładamy wierzchołek lewego na prawy. Dno lewego stosu to $\alpha$, a prawego - $B$ czyli blank.

**b.** Prezentujemy stos z $a$ jako zapis binarny ilości rzeczy na stosie, gdzie cyfra jedności to góra stosu. Potrzebujemy trzech operacji:
- dołóż $0$ na szczyt ->  to jest mnożenie $\cdot 2$
- dołóż $1$ na szczyt -> to jest mnożenie $\cdot2$ plus jeden 
- sprawdź co jest na szczycie, czyli oblicz modulo $2$ -> zdejmuję ze stosu i skaczę między stanami "parzyście wiele", "nieparzyście wiele"
- zdejmowanie ze stosu to przekładanie co drugiego krążka na stos pomocniczy

nie trzeba się ograniczać do stosu o $2$ elementach, bo można $2$ zamienić na dowolne $n$ :v

**c.** symulujemy teraz liczniki przez $2^n\cdot3^m\cdot...$, czyli $n$ to ile jest na pierwszym liczniku, a $m$ - ile na drugim
i wtedy cztery liczniki zmieniają się w dwa, które mówią tylko czy jest pusto i potrafią coś dołożyć na stos