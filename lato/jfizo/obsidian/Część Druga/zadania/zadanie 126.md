>Rozpatrzmy skończony zbiór par słów $P$ i binarną relację $\to_P$ na słowach zdefiniowaną jak następuje:
>
>$w\to_Pv$ $\iff$ istnieje para $(a, b)\in P$ taka, że $w=ax$ i $v=xb$, gdzie $x$ jest pewnym słowem
>
>Niech $\xrightarrow{*}_P$ będzie przechodznim domknięciem $\to_P$
> Czy problem: dane $P$, $x$, $y$, czy $x\xrightarrow{*}_Pv$ jest rozstrzygalny?

Pokażemy, że $ST\leq P$, czyli problem redukuje się do SemiThuego.

Dostaję problem $(w, v, \Pi)$ jak w problemie ST i moim celem jest zwrócić krotkę $(w', v', P)$ jak w problemie wyżej tak, by zachodziło
$$(w,v,\Pi)\in ST\iff (w',v', P)\in Z126$$

Zdefiniujmy zbiór $P$ jako
$$P=\Pi\cup\{(a, a)\;:\;a\in\Sigma\}\cup\{(\star, \star)\}.$$

$(w,v,\Pi)\in ST\implies (w\star,v\star,P)\in Z126$
Jeden krok w SemiThue $w=w_1lw_2\implies w_1rw_2=w'$ tłumaczy się na
$w\star=w_1lw_2\star\implies lw_2\star w_1\implies w_2\star w_1r\implies w_1rw_2\star=w'\star$ 

$(w,v,\Pi)\in ST\impliedby (w\star,v\star,P)\in Z126$
W $Z126$ mamy trzy możliwe kroki
1\. $aw_1\star w_2\implies w_1\star w_2a$, ale to jest to samo w $ST$, bo tam nie ma gwiazdki i finalnie będziemy ją musieli wyrzucić na koniec.
2\. Tak samo $\star w\implies w\star$ nic nie zmieni.
3\. Czyli dopiero coś się dzieje kiedy dokonuje ruchu ($w_1$ może być puste) 
$[w_1lw_2\star\implies]lw_2\star w_1\implies w_2\star w_1r[\implies w_1rw_2\star]$
tak jak w $ST$.