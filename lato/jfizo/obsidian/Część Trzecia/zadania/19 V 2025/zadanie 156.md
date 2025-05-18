>Klauzula nazywa się hornowską, jeśli co najwyżej jeden z jej literałów jest niezanegowany. Pokaż, że problem HORNSAT spełnialności formuł, w postaci CNF, których każda klauzula jest hornowska, jest w P.

Zaczynam od ustawienia wszystkich zmiennych na false

Sprawdzam, czy jest nawias, który ma tylko jedną zmienną $a$ i jest ona niezanegowana, to ustawiam ją na true i wymazuję ze wszystkich nawiasów, sprawdzając, czy gdzieś nie występuje ona jako pojedynczy nawias jako $\neg a$. Jeśli występuje, to fauiluje, a jeśli nie, to wywołuję się rekurencyjnie.