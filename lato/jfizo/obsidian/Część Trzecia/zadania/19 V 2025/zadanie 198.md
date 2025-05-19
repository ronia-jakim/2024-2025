> Niech $f:\{0,1\}^*\to \{0,1\}^*$ będzie bijekcją obliczalną w czasie wielomianowym. Czy wynika z tego, że $f^{-1}$ też jest bijekcją obliczalną w czasie wielomianowym?

Idea jest taka, że jako kontrprzykład bierzemy zmianę z zapisu unarnego do binarnego. Tylko coś trzeba robić z $0$. 

Czy wystarczy
$$\underbrace{00...0}_{\text{leci na siebie}}\underline{1...01011}_{\text{a...0a0aa}},$$
gdzie $a$ to jest ilość jedynek w drugiej części zapisana binarnie. Jeśli dwie rzeczy idą na to samo, to mają tyle samo zer na początku i tyle samo jedynek na końcu, przeplatanych tak samo zerami.