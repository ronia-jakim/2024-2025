> Pokaż, że każdy zbiór rekurencyjnie przeliczalny jest rzutem pewnego zbioru rekurencyjnego, to znaczy jeśli $B$ jest r.e. to istnieje taki rekurencyjny $\mathcal{A}\subseteq\mathbb{N}^2$ taki, że 
> $$B=\{n\;:\;\exists\;m\;(n,m)\in\mathcal{A}\}$$

Niech `phi` będzie programem rozpoznającym $B$.
$$\mathcal{A}=\{(n, m)\;:\;\phi(n) \text{ oblicza się w nie więcej niż } m\text{ krokach} \}$$

```python 
def psi(n, m):
	phi.start(n)
	while m:
		x = phi.step()
		if x:
			return true
		m -= 1
		
	return false
```