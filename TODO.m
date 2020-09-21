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
%1 Aggiungere una K nel modello dell'operatore e la K metto dentro lo schema a blocchi (valore fisso): 
%  vedere come si comporta il sistema.

%2 Caso base, operatore modellato con una molla gli diamo (1/Kh) su Ah e poi la derivata 
%  (fare la derivata numerica e un filtro passa basso).
%  1.[DONE] Implementare l'architettura non usando la Kh taglio A e Z;
%  2. Assumo come Kh il valore vero di Kh inserito nel modello (caso ideale);
%  3. Controllare se aumenta le prestazioni, con free motion e in contatto con 
%     ambiente e monitorare le forze di reazione devono essere uguali;

%3 Aggiungo Kh e monitoriamo le prestazioni per vedere se funziona.

%4 Vedere di sovrastimare e sottostimare la Kh.





