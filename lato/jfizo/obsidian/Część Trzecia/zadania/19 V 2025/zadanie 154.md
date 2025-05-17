>Problem STASI$^2$ jest taki: mamy dany graf nieskierowany i liczbę $k$. Czy da się rozstawić $k$ agentów w wierzchołkach grafu tak, aby każdy wierzchołek w którym nie stoi agent miał (co najmniej jednego) agenta za sąsiada? Pokaż, że 3-SAT $\leq_p$ STASI.
>*Wskazówka: To nie jest trudne. Idea jest podobna jak przy dowodzie faktu, że 3-SAT $\leq_p$ 3-COL, który był na wykładzie. Tylko łatwiej.*

Teraz moim gadżetem jest wierzchołek przyczepiany do trójek, które są w jednym nawiasie.
Czyli graf ma jako wierzchołki $p_1$, ..., $p_n$ pojawiające się w 3-SAT i ich zaprzeczenia, połączone krawędzią parami. Do każdej pary doklejam $k$ wierzchołków, każdy połączony tylko do $p$ i $\neg p$.  Czyli na razie mam $2kn$ wierzchołków.
Żeby symulować nawiasy dodajemy wierzchołek połączony do tego, co się pojawia w nawiasie.

Dwojaczkami wymuszamy, żeby agenci stali w $p_i$ lub $\neg p_i$, a trojaczek to po prostu nawias.