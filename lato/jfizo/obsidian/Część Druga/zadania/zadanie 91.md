> Udowodnij, że jeśli $\phi$ jest niemalejącą całkowitą funkcją rekurencyjną, to zbiór $\phi(\mathbb{N})$ jej wartości jest rekurencyjny. Czy pozostaje to prawdą bez założenia o całkowitości $\phi$?

WERSJA DLA NIEOGRANICZONEJ funkcji phi
```python
def doopa(n):
	i = 0
	k = 0
	
	while k <= n:
		k = phi(i)
		if k == n: 
			return true
		i += 1
	return false
```

WERSJA DLA OGRANICZONEGO od góry przez $X$
```python
def doopa(n):
	if n > X: return false 
	
	i = 0
	k = 0
	
	while k <= n:
		k = phi(i)
		if k == n: 
			return true
		i += 1
	return false
```

**Dla niecałkowitego $\phi$**
Pokażemy, że istnieje rekurencyjna pętląca się (niecałkowita) funkcja niemalejąca, której obraz nie jest rekurencyjny (jest on równy $K$ z wykładu).

$$K=\{n\;:\;\psi_n(n)\in\mathbb{N}\}$$

```python 
def poopa(n):
	f = phi(n) # korzystam z bijekcji N<->programy
	f(n) # jeśli f(n) się pętli, to poopa też
	return n
```