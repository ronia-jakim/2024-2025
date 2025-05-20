Nad każdą przestrzenią wisi $\tilde{X}$ na której działa pewna grupa $\Gamma$, ją się produkuje zaczynając od odwzorowania wszystkich ścieżek z pewnego wyróżnionego punktu (wydzielone przez homotopię ścieżek modulo końce) do $X$. Czyli teraz mamy nakrycie uniwersalne.

Czyli na razie doszliśmy do tego, że jak jesteśmy w topologii algebraicznej, to jesteśmy w świecie przestrzeni ze specjalnym działaniem grupy.
Ekwiwariantna topologia $\tilde{X}$ to tak naprawdę topologia $X$. Czyli on zaczął od $\Gamma$ i $\tilde{X}$, a nie $X$.
Do kompleksu łańcuchowego $\tilde{X}$ zaczynamy od triangulacji $X$, która podnosi się do triangulacji na $\tilde{X}$ i tutaj działa $\Gamma$, przez co mamy $\mathbb{Z}[\Gamma]$. 

Czyli na razie historia jest podobna do cyklicznych nakryć.

Teraz bierzemy niezwarty CW kompleks $X$ i pytamy
- kiedy ma typ homotopii zwartego $Y$ (czyli skończony CW kompleks)
- kiedy jest retraktem deformacyjnym $Y$, czyli są dwa odwzorowania $s:X\to Y$ i $\pi:Y\to X$ takie, że $id_X\cong \pi\circ s$

Tworzymy teraz niezmiennik $\chi\in K_0(\mathbb{Z}[\pi_1X])$ coś abstrakcyjnego, co przyjmuje wymiary pewnej klasy modułów.  

Moduł projektywny jest zdominiowany (retrakt deformacyjny) przez moduł wolny.
teraz jest że moduły projektywne wydzielone przez relacje "wszystkie moduły wolne są tym samym" tworzą grupe
półgrupę w grupę zamieniamy biorąc obiekt uniwersalny dla morfizmów z kategorii monoidów do grup abelowych? konstrukcja grothendicka (albo $K_0$)

K-teoria pierścienia $k[X,Y]$, gdzie $k$ to ciało, jest prosta bo $K_0(k[X,Y])=\mathbb{Z}$ i to jest ponoć trudne twierdzenie
liczby algebraiczne nad $\mathbb{Q}$ są ciekawe, czyli bierzemy skończone rozszerzenie $K\supseteq \mathbb{Q}$ i tutaj wybieramy liczby algebraiczne
no i funkcje ciągłe $C(X)$ na zwartym $X$ 

Wracamy do $\chi\in K_0(\mathbb{Z}[\pi_1X])$ 
Bierzemy triangulację $X$, podnosimy do triangulacji nakrycia i teraz patrzymy na $C_*(\tilde{X})$, które jest wolnym skończenie generowanym modułem $\mathbb{Z}[\Gamma]$ jeśli $X$ był zwarty.
Więc jeśli istnieje $Y\to X$ i z powrotem (retrakcja), to mamy cofnięcie $\tilde{X}$ do $\tilde{Y}$ i wtedy $C_*(\tilde{Y})$ to skończenie generowane wolne? moduły
$\chi_{Wall}(X)$ przeszkoda Walla (jest równa zero $\iff$ $X$ jest dominowany przez skończony CW kompleks)

$Conf_2\Gamma\to conf_2\Gamma$ nakrycie podwójne, działa $\mathbb{Z}_2$ tutaj (zamień współrzędne)

No i teraz na $X$ działa jednowymiarowy torus $T^1$
na kohomologiach $T$ działa identycznością, bo $T$ to okrąg i jest po prostu spójny
jeśli działanie jest wolne, to mamy 
$T\to X\to X/T$
i to jest badane przez klasy charakterystyczne
jak działanie nie jest wolne, to uwalniamy robiąc $T\times_TX$ 
$E\mathbb{Z}_2$ to będzie $S^\infty$, bo $S^n\subseteq S^{n+1}$ jest ściągalna w większej sferze
$ET$ mamy $S^{2n-1}\subseteq \mathbb{C}^n$ i teraz mamy $S^{2n-1}\subseteq S^{2n+1}\subseteq...\subseteq S^{2\infty-1}$ :p
$X\times ET$ wydzielamy przez diagonalne działanie $T\times T$ 
