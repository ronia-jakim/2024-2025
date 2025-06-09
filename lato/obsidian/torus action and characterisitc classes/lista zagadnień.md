- Chern classes
	- na zespolonych wiązkach
	- $c(w\oplus v)=c(w)c(v)$
	- powiązane z euler class
	- na wikipedii pokazują, że $\mathbb{C}P^1$ ma nietrywialną wiązkę styczną przy ich pomocy (ale nie doczytałam dokładnie)
	- co jeszcze? S-W wiem że mówi o orientowalności i spin strukturze
- equivariant cohomology
	- $\mathbb{E}G\times_G X$, tutaj $\mathbb{E}G$ to ściągalna przestrzeń na której $G$ działa wolno, czyli stoimy tylko na elemencie neutralnym (to jest po prostu sfera nieskończenie wymiarowa)
	- co oznacza $\times_G$? to jakoś żeby się orbity po prawej i lewej zlepiły w jedną oribtę, a nie duplikowały?
	- przeczytałam, że jeśli $G$ działa na $X$ wolno, to te kohomologie są normalnymi kohomologiami $H^*(X/G)$, czyli one liczą jak bardzo działanie $G$ nie jest wolne?
- GKM - skrót od Goresky Kottwitz and MacPherson?
	- GKM to 1-szkielet tego rusynku, ktory powstaje z odwzorowania moment
	- to jest po prostu equivariant cohomology od torusa
	- pamiętam, że na Eulerze było zadanie na działanie torusa $\mathbb{T}^n$ na $\mathbb{C}^n$ przez macierze diagonalne, chodzi o to, że interpretujemy każdy wyraz na przekątnej jako jedno kółko torusa?
	- wyliczamy kilka konkretnych przypadków equivariant cohomology torusa, ale nie zawsze to działa
- monodromy i Libgober
	- kontynuacja analityczna??? znam funkcje analityczne w jakimś punkcie, to mogę ją przedłużyć w sposób jednoznaczny
	- pierwiastek z $1$ może mieć wiele wartości, tutaj dostaję transformację, która może mieć wiele wartości i to jest też ta monodromia -> to się uogólnia na pewne typy wiązek
	- geometria rzutowa/algebraiczna tutaj są uogólnienia
	- monodromy to podnosimy pętelki do nakrycia i w ten sposób działamy na włóknie nakrycia? i to działanie to monodromia?
	- https://arxiv.org/pdf/2306.12278 -> braid monodromy and alexander polynomial of real plane curves (brzmi ciekawie)
	- https://arxiv.org/pdf/math/0201291 -> hypersurface complements, alexander modules and monodromy (hits all the boxes)
	- czy do alexander invariants też się opłaca liczyć to torus equivariant cohomology? no bo to jakby działamy wieloma $S^1$, to można odnaleźć tam jakieś węzły?

torus jest, bo interesuje nas działanie zwartej grupy
rozmaitości flag/grassmanian ma działanie torusa
to co łączy to fakt, że to są zespolone rozmaitości rzutowe
Białynicki-Birula to jeden człowiek (ma brata)

GKM przychodzi z geometrii algebraicznej i oni sobie liczeli
geometria symplektyczna też daje podejście, odwzorowanie moment

mamy rozmaitość Riemannowską i odwzorowanie
to możne odwzorowanie podmienić na różniczkę
można ją podmienić na pole wektorowe $X_f$ i jak wezmę pole $Y$ i wyewaluuje na $Y$ formę $df$, czyli  $Ydf$, to jest to samo co jak wezmę iloczyn skalarny pola $X_f$ z $Y$  
dwuliniowa forma między przestrzenią a przestrzenią dualną -> 1-formę zamieniam na pole wektorowe
symetryczny gdy forma symetryczna, symplektyczna gdy skośna
czyli każda funkcja zadaje pole wektorowe na rozmaitości
czyli normalnie płynę tak jak funkcja maleje, a gradient symplektyczny inaczej, bo płynie po poziomicach funkcji

na $\mathbb{R}^2$ mamy normalny iloczyn skalarny i objętość jako formę symplektyczną
$x^2$ riemannowsko ścieka do $0$, a symplektycznie płynie po okręgach i jest obrotem
hamiltonian
ewolucja hamiltonowska
riemannowski i symplektyczny potok na rozmaitości $\mathbb{C}P^n$
czasami potoki generują działanie torusa, czyli $S^1$, czyli są okresowe
odwzorowanie moment idzie w drugą stronę, czyli mając działanie torusa generuję $n$ funkcji i obraz to wielościan wypukły

momentum image flag variety

mam rozmaitosc flag, dzialanie torusa na niej kombinatoryzuje te rozmaitosc i to ulatwia liczyc