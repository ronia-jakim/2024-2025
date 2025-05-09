> Przez gramatykę bezkontekstową z kontekstowym znikaniem będziemy w tym zadaniu rozumieć obiekt różniący się od gramatyki bezkontekstowej jedynie obecnością - w zbiorze produkcji - dodatkowych reguł postaci $w\to\varepsilon$, gdzie $w$ jest słowem złożonym z nieterminali, zaś $\varepsilon$ jest jak zwykle słowem pustym.
> 
> Przez problem znikania rozumiemy w tym zadaniu problem, w którym dana jest gramatyka ze znikaniem, mająca symbol początkowy $S$ i zbiór produkcji $\Pi$ i w którym pytamy, czy $S\xrightarrow{*}_\Pi\varepsilon$.
> 
> Udowodnij, że problem znikania jest nierozstrzygalny.

Robimy redukcję z problemu Semi-Thue.

Mamy daną maszynkę do słów Semi-Thue, $(\Pi, w, v)$, ponumerujmy jej przejścia kolejnymi liczbami naturalnymi. Dodamy te liczby do gramatyki jako nieterminale. Zmieńmy też literki, które się w $\Pi$ pojawiają na duże literki-nieterminale i od razu dodajmy przejścia z literek-nieterminali do literek-terminali. To taka formalność.

Mając regułę w $\Pi$ o numerze $i$, która zawiera $(a_1a_2...a_j, b_1...b_k)$, chcemy dorzucić do gramatyki przejścia
$$A_1\to B_1...B_ki$$
$$iA_2...A_j\to \varepsilon,$$
tzn. rozbijamy regułę na pierwszą literkę i całą resztę, którą znikniemy. Dzięki ponumerowaniu reguł mamy jednoznacznie powiedziane, który ogon literki możemy usunąć w ramach jakiej reguły w $\Pi$.

