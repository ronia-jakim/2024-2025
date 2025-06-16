co-NPSPACE = PSPACE
pomysł: regex -> NFA liniowo
zgaduje literka po literce jakim słowem upierdole regex
pilnuję do których wierzchołków mogłam dojść, ich dużo nie jest, bo NFA ma liniowo wierzchołków
jeśli znajdę moment, w którym ani jeden wierzchołek do którego mogę dojść nie jest akceptujący, to mówię że jest słowo, którego regex nie pokrywa

