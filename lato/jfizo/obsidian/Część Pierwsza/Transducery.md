>[!tip] trascducer Moore'a
>to krotka $(\Sigma, \Sigma_1, Q, q_0, \delta, \sigma)$, gdzie 
>-  $(\Sigma, Q, q_0, \emptyset, \delta)$ jest DFA (z pustem zbiorem stanów akceptujących)
>-  $\sigma:Q\to \Sigma_1^*$ dla pewnego alfabetu $\Sigma_1$

Jeśli $T$ jest transducerem Moore'a, to $f_T:\Sigma^*\to \Sigma^*_1$ jest zdefiniowana jako 
$$f_T(\varepsilon)=\varepsilon$$
$$f_t(wa)=(f_T(w))\sigma(\delta(wa, q_0))$$

>[!tip] transducer Mealy'ego
>jest zdefiniowany analogicznie z tym, że
>$$\sigma:Q\times\Sigma\to\Sigma^*_1$$

Dla transducerów Mealy'ego definiujemy
$$f_T(wa)=(f_T(w))\sigma(\delta(w, q_0), a)$$

> [!tip] równoważność transducerów
> Powiemy, że transducery $T$ i $T'$ są równoważne, gdy $f_T=f_{T'}$

Dla języków $A\subseteq\Sigma^*$ i $B\subseteq\Sigma_1^*$ definiujemy $A\leq_{reg}B$ jeśli istnieje transducer $R$ (Moore'a lub Mealy'ego) taki, że dla każdego $w\in\Sigma^*$ zachodzi $w\in A$ $\iff$ $f_T(w)\in B$. 