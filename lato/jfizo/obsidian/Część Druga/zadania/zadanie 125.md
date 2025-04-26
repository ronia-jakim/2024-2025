> Udowodnij nierozstrzygalność problemu sprawdzenia dla danego procesu Thuego $\Pi$ i słowa $w$, czy zbiór $A_w=\{v\;:\;w\xleftrightarrow{*}_\Pi v\}$ jest skończony.
> *Wskazówka (nieobowiązkowa, jak wszystkie wskazówki): Rozważ maszyny Turinga z dodanym gdzieś na taśmie licznikiem, który jest zwiększany o jeden przy każdym ruchu wykonywanym przez maszynę. Naśladuj dowód nierozstrzygalności problemu słów.*

Obok taśmy stawiamy licznik $K$. Kiedy będziemy próbowali $w$ zmienić w $v$ zamieniając $l$ w $r$ to idziemy w prawo i $K++$. Jeśli będziemy z $v$ robić $w$ przez zamianę $r$ w $l$, to pójdziemy w lewo i $K--$. Tutaj będziem ifować, czy $K>0$ żeby pozwolić na iście w lewo.

Licznik muszę trzymać w słowie, nad którym majstruję przy pomocy Turinga i Thue. Licznikiem będzie ilość $\heartsuit$ w moim słowie.

Zmieniamy reguły z $\Pi$ pochodzące z maszyny Turinga
- $\delta(q,a)=(q',a', L)$ mamy $(aq, q'a'\heartsuit)\in\Pi$
- $\delta(q, B)=(q',a', L)$ mamy $(Bq, q'a'B\heartsuit)\in\Pi$  (słowa są skończone, chcemy nowego blanka)
- $\delta(q,a)=(q',a',R)$ dodajemy $(\forall\;b\in A)$ $(aqb,a'bq\heartsuit)\in \Pi$ 
- $\delta(q,b)=(q', a, R)$ mamy $(Bq, aBq'\heartsuit)\in\Pi$

Dodatkowo chcemy manipulować gdzie jest licznik
- przesuwamy licznik do nas, czyli $(\forall\;a\in \Sigma)\;(a\heartsuit, \heartsuit a)\in\Pi$

reguły z pożeraczem zostaje jak było
- dodajemy $(q_F,\star)\in\Pi$, czyli jak nam się uda skończyć, to informujemy o tym słowo
- każdego $a\in A\cup\{\heartsuit\}$ dodajemy do $\Pi$ pary $(a\star, \star)$ oraz $(\star a,\star)$ skoro już jedna gwiazdka się pojawiła, to możemy zwinąć słowo do pojedynczej gwiazdki nie patrząc na końcową konfigurację taśmy.

$n\in K\implies |A_w|<\infty$ jest OK, nie można iść w lewo w nieskończoność z $w$, tylko spróbuję od razu iść do $v$ w prawo. Chodzenie w prawo działa jak na wykładzie, czyli w końcu dojdziemy do pożeracza :v

$n\not\in K\implies |A_w|=\infty$ idąc w prawo wygeneruję nieskończenie wiele słów z $w$, bo żuczek nigdy nie staje.