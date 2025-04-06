> Rozszerz definicję zbioru rekurencyjnego tak, aby można było rozważać rekurencyjne zbiory par liczb naturalnych i udowodnij, że jeśli zbiór $\mathcal{A}\subseteq\mathbb{N}^2$ jest rekurencyjny, to zbiór 
> $$\{n\;:\;\exists\;m\;[n,m]\in \mathcal{A}\}$$
> czyli rzut na pierwszą współrzędną, jest zbiorem rekurencyjnie przeliczalnym.

$\mathcal{A}\subseteq\mathbb{N}^2$ jest jest rekurencyjny, jeśli istnieje dwuargumentowy program $\phi$ taki, że 
$$\phi(n,m)=\begin{cases}1& (n,m)\in \mathcal{A}\\ 0 & wpp.\end{cases}$$

Powiedzmy, że mam dostępną rekurencyjną funkcję `phi`, która rozpoznaje $\mathcal{A}$
```python 
def pi(n):
	i = 0
	while (true):
		if (phi(n, i)):
			return true
		i += 1
```