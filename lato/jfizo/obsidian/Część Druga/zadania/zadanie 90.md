> Niech $A$, $B$, $C$, $D$ będą zbiorami rekurencyjnie przeliczalnymi takimi, że każda liczba naturalna należy do dokładnie dwóch z nich. Udowodnij, że w takim razie wszystkie cztery zbiory są rekurencyjne.

```python
def programA(n):
	phiA.start(n)
	phiB.start(n)
	phiC.start(n)
	phiD.start(n)
	
	while(true):
		a = phiA.step()
		b = phiB.step()
		c = phiC.step()
		d = phiD.step()
		
		if a: return true
		elif (b && c) || (b && d) || (c && d): return false 
```