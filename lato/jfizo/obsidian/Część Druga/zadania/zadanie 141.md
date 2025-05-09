> Niech $\phi(x, y)$ będzie pewną formułą arytmetyki liczb naturalnych z dodawaniem i mnożeniem, z dwiema zmiennymi wolnymi. 
> 
> Napisz zdanie $\psi$ arytemtyki liczb naturalnych z dodawaniem i mnożeniem, które będzie prawdziwe $\iff$ istnieją liczba $l\geq 1$ i skończony ciąg liczb naturalnych $a_1,..., a_l$ taki, że $a_1=1$, $a_l=2$ oraz taki, że dla każdego $1\leq i\leq l-1$ zachodzi $\psi(a_i, a_{i+1})$.

Najpierw makra:

iloczyn liczb pierwszych pomiedzy $l$ a $r$
$m(M, l, r)=(\forall\;p)\;pierwsze(p)\;\land\;[(p<l\;\land\;\neg p|M)\; \lor(p\in[l,r]\;\land\; p|M\;\land\;\neg p^2|M)]$

kodowanie bycie modulo
$(x\mod p\equiv r) =(\exists\;y)\;yp+r=x$


$(\exists\; p<q)\;pierwsze(p)\;\land\; pierwsze(q)\;\land$
$(\exists\;M)\; m(M, p, q)$ 
$(\exists\;x\in[0,M))\;x\mod p\equiv 1\;\land\;x\mod q\equiv 2\;\land\;$
$(\forall\;p_1<p_2\in[p,q])\;kolejnePierwsze(p_1,p_2)\;\land$
$(\exists\;r_1,r_2<M)\;x\mod p_1\equiv r_1\;\land\;x\mod p_2\equiv r_2\;\land\;\phi(r_1,r_2).$