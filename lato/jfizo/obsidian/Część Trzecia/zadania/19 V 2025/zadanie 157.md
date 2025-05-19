> Pokaż, że problem spełnialności formuł w koniunkcyjnej postaci normalnej, w których każda klauzula jest alternatywą co najwyżej dwóch literałów jest w klasie P. Patrz definicja na stronie 375 polskiego wydania książki Hopcrofta i Ullmana. Tłumaczka z bożej łaski tłumaczy CNF jako PNK.

2-SAT
https://cp-algorithms.com/graph/2SAT.html

Idea jest taka, że zamieniamy każdy nawias na implikacje. Tworzymy graf w którym wierzchołki to zmienne lub ich negacja, a krawędzie to implikacje.

Chcemy zacząć od znalezienia wszystkich składowych spójności, że z każdego wierzchołka da się przejść do każdego innego (przypominamy, że to jest graf skierowany). To są kółka implikacji i jeśli na nim leży $a$ jak i $\neg a$ to jest źle.
To można zrobić sprawdzając każdy z każdym w $n^3$, bo nie obchodzi nas żeby to było bardzo szybko.

Pozostała część grafu się nie cykli, więc mamy tam niecykliczny graf skierowany i tam szukam największej ścieżki. Idąc od końca ustawiam na fałsz aż dojdę do momentu, że z prawdy musiałby wynikać fałsz.