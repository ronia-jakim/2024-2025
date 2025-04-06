>[!tip] zbiór rekurencyjny 
>Powiemy, że $A\subseteq \mathbb{N}$ jest **rekurencyjny** (obliczalny, rozstrzygalny), jeśli istnieje program $\phi$ taki, że dla każdej $n\in\mathbb{N}$ 
>$$\begin{cases}\phi(n)=0&n\not\in A\\ \phi(n)=1&n\in A\end{cases}$$

To znaczy, że program $\phi$ wylicza się (nie zapętla) dla każdego inputu i jako output daje P/F zbioru $A$.

 > [!tip] rekurencyjnie przeliczalny
 > $A\subseteq \mathbb{N}$ jest **przeliczalnie rekurencyjny**, jeśli istnieje program taki, że
 > $$(\forall\;n\in\mathbb{N})\;\phi(n)=1\iff n\in A$$
 > lub równoważnie
 > $$(\forall\;n\in \mathbb{N})\;\begin{cases}\phi(n)\in\mathbb{N}&n\in A\\ \phi(n)=\perp & n\not\in A,\end{cases}$$
 > gdzie $\perp$ oznacza pętlenie się programu

Ta definicja pozwala na zapętlanie się programu dla wartości nienależących do $A$. 

> [!info] uwaga 
> Klasa rekurencyjnie przeliczalnych programów jest zamknięta na przecięcia i sumy

```python 
def int(programA, programB):
	def intersection(n):
		x = programA(n)
		y = programB(n)
		if (x && y): return true
		return false
	return intersection
```

```python 
def int(programA, programB):
	def sum(n):
		# podajemy programom input
		programA.start(n)
		programB.start(n)
		while(true):
			# dokonujemy jedno obliczenie w programie 
			# (jedną linijkę jak debugger)
			x = programA.step() 
			y = programB.step()
			
			# jeśli się któryś obliczył to fajno, wpp. kontynuuj
			if (x || y) return true
```

> [!info] uwaga 
> Jeśli $A$ oraz $\mathbb{N}-A$ są rekurencyjnie przeliczalne, to oba są rekurencyjne
> ^alboAalboNbezA

```python 
def int(programA, programNbezA):
	def sum(n):
		# podajemy programom input
		programA.start(n)
		programNbezA.start(n)
		while(true):
			# dokonujemy jedno obliczenie w programie 
			# (jedną linijkę jak debugger)
			x = programA.step() 
			y = programNbezA.step()
			
			# ponieważ zawsze albo x albo y musi być true, 
			# bo sumują się do N, to śmiga
			if (x) return true
			if (y) return false
```

Numerujemy, w sposób obliczalny (rekurencyjny), tj. mamy obliczalną bijekcję między $\mathbb{N}$ a wszystkimi programami.

> [!warning] przykład
> Zbiór 
> $$K=\{n\;:\;\phi_n(n)\in \mathbb{N}\}$$
> jest rekurencyjnie przeliczalny, ale nie jest rekurencyjny.

Zaczynamy od programu r.e. (rekurencyjnie przeliczalnego), który rozpoznaje $K$

```python
def K(n):
	return (phi(n))(n)
```

> [!info] twierdzenie Turinga o nierozstrzygalności problemu stopu
> Program $K$ jest nierozstrzygalny (nierekurencyjny).

Dowód nie wprost: załóżmy, że $K$ jest rozstrzygany przez $\psi$. Zdefiniujmy program
$$\phi(n)=\begin{cases}1&\psi(n)=0\\\perp & \psi(n)=1\end{cases}$$
Wtedy $\phi$ ma pewien numer, powiedzmy $k$. Co się dzieje dla $\psi(k)$?
- $\psi(k)=1$, co znaczy, że $\phi(k)=1$, ale to jest sprzeczne z definicja $\phi$, bo jeśli $\psi(k)=1$, to $\phi$ miało się pętlić
- $\psi(k)=0$, co znaczy, że $\phi(k)=0$, ale wtedy powinniśmy mieć $\psi(k)=1$.