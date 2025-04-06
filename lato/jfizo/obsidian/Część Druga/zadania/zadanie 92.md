> Udowodnij, że każdy niepusty zbiór rekurencyjnie przeliczalny jest postaci $\phi(\mathbb{N})$ dla pewnej całkowitej funkcji rekurencyjnej $\phi$. 

Z zadanie [[zadanie 87]] wiemy, że każdy zbiór rekurencyjnie przeliczalny jest rzutem pewnego zbioru rekurencyjnego w $\mathbb{N}^2$. W poprzednim dla rekurencyjnie przeliczalnego $A$ definiowaliśmy
$$B=\{(n, m)\;:\;\phi(n)\text{ wylicza się w nie więcej niż }m\text{ krokach}\}\subseteq\mathbb{N}^2,$$
skorzystajmy więc z tej pracy i niech `psi` będzie programem wyliczającym $B$.  

Niech $x\in A$ będzie dowolnym elementem, a $F:\mathbb{N}\to \mathbb{N}^2$ będzie dowolną bijekcją (która istnieje, bo to są zbiory równoliczne).

Piszemy funkcję rekurencyjną
```python
def rek(n):
    # biore n-ty element N^2
    p = F(n)
    # jesli jest on w B, to znaczy ze jego rzut na 1sza wspolrzedna jest w A
    if psi(F(n)): 
        return pi_1(F(n))
    # wpp nie jest w B, czyli rzut nie jest w A, czyli zwracam wczesniej wybrany element niepustego A
    return x in A
```
