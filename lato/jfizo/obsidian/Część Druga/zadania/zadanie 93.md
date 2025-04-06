> Udowodnij, że każdy nieskończony zbiór rekurencyjnie przeliczalny jest postaći $\phi(\mathbb{N})$ dla pewnej całkowitej, różnowartościowej funkcji rekurencyjnej $\phi$. 

Z zadanie [[zadanie 87]] wiemy, że każdy zbiór rekurencyjnie przeliczalny jest rzutem pewnego zbioru rekurencyjnego w $\mathbb{N}^2$. W poprzednim dla rekurencyjnie przeliczalnego $A$ definiowaliśmy
$$B=\{(n, m)\;:\;\phi(n)\text{ wylicza się w nie więcej niż }m\text{ krokach}\}\subseteq\mathbb{N}^2,$$
skorzystajmy więc z tej pracy i niech `psi` będzie programem wyliczającym $B$.  

Niech $F:\mathbb{N}\to \mathbb{N}^2$ będzie dowolną bijekcją (która istnieje, bo to są zbiory równoliczne).

```python 
def rekurencja(n):
	set = [] 
	for i in range(0, inf):
		# w ogonie N jest nieskonczenie wiele elementow A, 
		# czyli idac dostatecznie dlugo trafie na n roznych
		x = F(i)
		if psi(x):
			set.push(pi_1(x))
			if set.length == n+1:
				return pi_1(x)
```