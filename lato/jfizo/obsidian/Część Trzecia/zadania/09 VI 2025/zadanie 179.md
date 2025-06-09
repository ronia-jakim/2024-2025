> Załóżmy, że istnieje wielomianowy algorytm, który dla każdego grafu $G$ takiego, że $\sigma(G)=1$ zwraca pokrycie cyklowe $G$ składające się z nie więcej niż dwóch cykli. Pokaż, że w takim razie $P=NP$

Idea jest taka, że robimy dwa pięterka z grafem $G$, połączone tylko dwoma windami. Jeśli taki nowy, dwupięterkowy graf zwraca dwa cykle, to albo oba są grzecznie na pięterkach, albo jeden z nich zachacza o windy i wtedy ten drugi nie może się uwolnić z pięterka -> obięcie zachaczającego do jednego piętra daje nam cykl pokrywający oryginalny graf.


trick do zrobienia pięterek to rozbicie jednego wierzchołka na dwa, jak niżej
![[Pasted image 20250608131013.png]]
