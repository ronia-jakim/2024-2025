>Powiemy, że semiproces Thuego $\Pi$ jest bezkontekstow, jeśli dla każdej pary $(w, v)\in\Pi$ słowo $w$ składa się z jednej litery. Czy problem słów dla bezkontekstowych semiprocesów Thuego jest rozstrzygalny?

Jest rozstrzygalny, bo słowo $w$ ma skończenie wiele literek, które mogę próbować podmienić lub nie. 
1. Wybieram początek, który próbuję podmieniać i koniec. 
2. Podmieniam pokolei literki z $\Pi$ w tym fragmencie wyróżnionym, 
	1. wywołuję się na nowych słowach
	2. lub kiedy będę dalej niż $|\Sigma|^{|v|}$ w tej rekurencji

Zagranie "było na AISDzie".

Można tez drzewami wyprowadzenia głębokości $\leq|\Sigma|^{|v|}$ i po prostu wypłaszczamy rekurencję. 
Tzn. dla każdej literki $w$ wyprowadzam wszystkie możliwości i potem mam w chuj dużo sprawdzeń.