> Niech $H$ oznacza problem cyklu Hamiltona dla grafów nieskierowanych (tzn. język tych wszystkich grafów nieskierowanych, w których istnieje ścieżka zamknięta przechodząca dokładnie raz przez każdy wierzchołek). 
> Niech $H_d$ oznacza problem cyklu Hamiltona dla grafów skierowanych. Pokaż, że $H\leq_p H_d$ i $H_d\leq_pH$.
> *Wskazówka: W trudniejszą stronę trzeba każdy wierzchołek zastąpić trzema.*

W redukcji $H\leq_p H_d$ każdą krawędź grafu nieskierowanego zamieniam na dwie krawędzie grafu skierowanego, tj. $(v,w)$ zamieniam na $v\to w$ i $v\to w$.

W redukcji $H_d\leq_pH$ chcę skorzystać ze wskazówki. Każdy wierzchołek $v$ zastępuję wierzchołkami
```
input --- transition --- output
```
tak, że jeśli $(v, w)$ było krawędzią z $v$ do $w$, a $(u, v)$ - wchodzącą do $v$, to mamy
```
                            w
                            |
input --- transition --- output
  |
  u
```

Jak mieliśmy oryginalny cykl w skierowanym grafie, to teraz on się ładnie tłumaczy, bo jeśli byśmy poszli `u --- input -- u'`, to potem jak będziemy próbowali przejść przez transition, to się zablokujemy bez możliwości pójścia dalej.