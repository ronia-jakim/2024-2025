> Jak każdy pamięta, w Zadaniu 1 należało udowodnić, że język $\mathcal{L}=\{vaw\;:\;v,w\in\{a,b\}^*,|w|=9\}$ daje się rozstrzygać niedeterministycznym automatem skończonym o 11 stanach, ale nie daje się rozstrzygać deterministycznym automatem o mniej niż $1024$ stanach. To zadanie, wraz z jego rozwiązaniem, warto mieć w głowie przy okazji kolejnych trzech zadań.

> Pokaż, że istnieje ciąg języków $\{L_i\}$ oraz stałe $c,k>0$ takie, że każdy $L_i$ daje się rozstrzygać przy pomocy NFA o nie więcej niż $ki$ stanach, ale żaden $L_i$ nie daje się rozstrzygać przy pomocy ONFA o mniej niż $2^{ci}$ stanach

to jednak nie działa

trzeba rozwazyc jezyk $L=(L_n\#)^*$, gdzie $L_n$ jest jak we wskazówce

Dowód nie wprost
Biorę rodzinę $2^i$ wszystkich słów długości $i$ złożonych z $a$ oraz $b$. Doklejam do nich $i$ literek $a$ (wtedy są wszystkie akceptujące). Każdemu słowu przypisuję ścieżkę akceptującą. Patrzę na $i$-ty krok w ścieżce (czyli środek) i ponieważ mam $2^i$ ścieżek, to co najmniej dwie przecinają się w połowie w tym samym stanie. Powiedzmy, że te słowa różnią się na $j$-tym indeksie, czyli możemy do pierwszej ich połowy dokleić $j$ literek $a$. To, które miało na $j$-tym indeksie $a$ będzie nadal miało akceptującą ścieżkę, ale to z $b$ będzie również miało akceptującą ścieżkę (bo od tego samego stanu idę tym samym tokiem), ale z definicji nie jest akceptujące. Sprzeczność $\star\star\star$. 