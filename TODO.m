%% TODO LIST

%% 22/07/2020 - AFTER MURADORE'S TALK
%1[DONE]. Inserire la variabile di stiffness dell'operatore come funzione nel tempo.

%2[DONE]. Aggiungere rumore a tale stiffness per aumentare il concetto di stima.

%3[DONE]. Modificare i controllori lato master e lato slave perchè lo slave riceve
    %una posizione da parte del master mentre il master riceve una forza da
    %parte dello slave.
    
%4[DONE]. Eliminare le velocità rimpiazzandole con le posizioni. Lato master esce
    %una posizione, successivamente da filtrare e stimare la velocità con
    %il filtro di Kalman o il metodo di Eulero con un filtro passa basso.

%5. Collegare la variabile di stiffness ai controllori di transizione Zzc e
    %Azc e cercare di inserire la funzione di stiffness all'interno della
    %funzione di trasferimento