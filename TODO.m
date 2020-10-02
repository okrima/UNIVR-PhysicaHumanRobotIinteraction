%% TODO LIST

%% 22/07/2020
%1[DONE]. Inserire la variabile di stiffness dell'operatore come funzione nel tempo.

%2[DONE]. Aggiungere rumore a tale stiffness.

%3[DONE]. Modificare i controllori lato master e lato slave perchè lo slave riceve
    %una posizione da parte del master mentre il master riceve una forza da
    %parte dello slave.
    
%4[DONE]. Eliminare le velocità rimpiazzandole con le posizioni. Lato master esce
    %una posizione, successivamente da filtrare e stimare la velocità con
    %il filtro di Kalman o il metodo di Eulero con un filtro passa basso.

%5[DONE]. Collegare la variabile di stiffness ai controllori di transizione Zzc e
    %Azc e cercare di inserire la funzione di stiffness all'interno della
    %funzione di trasferimento
    
%% 11/09/2020 
%1 Aggiungere una K nel modello dell'operatore e la metto dentro lo schema a blocchi (valore fisso): 
%  vedere come si comporta il sistema.

%2 Caso base, operatore modellato con una molla gli diamo (1/Kh) su Ah e poi la derivata 
%  (fare la derivata numerica e un filtro passa basso).
%  1.[DONE] Implementare l'architettura non usando la Kh taglio A e Z;
%  2.[DONE] Assumo come Kh il valore vero di Kh inserito nel modello (caso ideale);
%  3.[DONE] Controllare se aumenta le prestazioni, con free motion e in contatto con 
%     ambiente e monitorare le forze di reazione devono essere uguali;

%3 Aggiungo Kh e monitoriamo le prestazioni per vedere se funziona.

%4 Vedere di sovrastimare e sottostimare la Kh.

%% 29/09/2020
%1. Sistemare i grafici in modo che per una sola variabile ci siano più
%scope, ad esempio per le posizioni inserire in un unico grafico le varie
%posizioni
%2. Cambiare Fh_star, togliere quello che si ha implementato e inserire il
%controllore che genera l'intenzione dell'operatore e far ritornare una
%posizione ritardata.
%3. Modificare i riferimenti, da forze a posizioni.
%4. Per grafici a contatto con l'ambiente inserire anche le posizioni.
%5. Anzichè monitorare le forze, occorre monitorare le coppie, in
%particolare 4 coppie: 
%   - Coppia dell'operatore;
%   - Coppia del robot master;
%   - Coppia del robot slave;
%   - Coppia dell'interazione con l'ambiente.
%6. Scaricare il .bin delle presentazioni in LateX,
%7. Quando si monitorano nuove modifiche, occorre inserire nel grafico le
%modifiche della versione precedente (linee tratteggiate).
%8. Se il sistema oscilla, modificare il comportamento dell'ambiente
%(rendere molla e smorzatore più morbidi/rigidi). E valutare di avvicinare
%l'ambiente.
%9. Vedere come si comporta il sistema con POPC e senza POPC e modificare
%il ritardo partendo da 0 fino al valore di instabilità (senza POPC).
%10[123 - DONE]. Stare attento a variabili che bisogna discretizzare e variabili che
%devono essere continue.
%11. Aggiungere il rumore di misura su posizioni e forze.
%12. Effettuare simulazioni con e senza PoPc, modificando il ritardo e
%analizzare il comportamento.




