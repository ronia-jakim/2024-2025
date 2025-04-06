> Pokaż, że $\{n\;:\;|Dom(\phi_n)|\geq 7\}$ jest rekurencyjnie przeliczalny.

```python 
def dupa(n):
	# sprawdzam, czy na pierwszych i liczbach N
	# oblicza mi się w co najwyżej i krokach 
	i = 0
	while (true):
		doopa = 0
		# sprawdzam każdą liczbę z prefiksu
		for (j = 0; j < i; j++):
			phi(n).start(j)
			# tutaj, że ta j-ta oblicza się w < i krokach
			for (k = 0; k < i; k++):
				x = phi(n).step()
				# jeśli się obliczyło, to doopa
				if x: 
					doopa += 1
					break
		# sprawdzam doopa, czy to jest OK język
		if doopa >= 7: return true
		# kontynuuje hazard 
		i += 1
```