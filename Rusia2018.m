% Rusia Eliminatorias 2018

clc; clear all;
Intentos=100000;

PGB=49; % Brasil
PGCol=24; % Colombia
PGU=34; % Uruguay
PGC=32; % Chile
PGA=20; % Argentina
PGP=32; % Peru
PGPA=21; % Paraguay
PGE=30; % Ecuador
PGBol=17; % Bolivia 
PGV=22; % Venezuela

AciertoBrasil=0; 
AciertoColombia=0; 
AciertoUruguay=0; 
AciertoChile=0; 
AciertoArgentina=0; 
AciertoPeru=0; 
AciertoParaguay=0; 
AciertoEcuador=0; 
AciertoBolivia=0; 
AciertoVenezuela=0; 
AciertoCol2=0; 
AciertoCol3=0; 
AciertoCol4=0; 
AciertoCol5=0; 

 for i=1:Intentos
    

    % Tabla Actual
    
    Brasil    = [36 11 3 1 37 10 1];
    Colombia  = [25 7 4 4 18 15 2];
    Uruguay   = [24 7 3 5 26 17 3];
    Chile     = [23 7 2 6 24 22 4];
    Argentina = [23 6 5 4 15 14 5];
    Peru      = [21 6 3 6 24 24 6];
    Paraguay  = [21 6 3 6 16 21 7];
    Ecuador   = [20 6 2 7 23 22 8];
    Bolivia   = [10 3 1 11 13 34 9];
    Venezuela = [7 1 4 10 17 34 10];

    % 5 de Septiembre
    
    [Bolivia,Chile]=Partidos(Bolivia,Chile,PGBol,PGC);
    [Colombia,Brasil]=Partidos(Colombia,Brasil,PGCol,PGB);
    [Ecuador,Peru]=Partidos(Ecuador,Peru,PGE,PGP);
    [Argentina,Venezuela]=Partidos(Argentina,Venezuela,PGA,PGV);
    [Paraguay,Uruguay]=Partidos(Paraguay,Uruguay,PGPA,PGU);
    
    % 5 de Octubre
    
    [Bolivia,Brasil]=Partidos(Bolivia,Brasil,PGBol,PGB);
    [Venezuela,Uruguay]=Partidos(Venezuela,Uruguay,PGV,PGU);
    [Chile,Ecuador]=Partidos(Chile,Ecuador,PGC,PGE);
    [Colombia,Paraguay]=Partidos(Colombia,Paraguay,PGCol,PGPA);
    [Argentina,Peru]=Partidos(Argentina,Peru,PGA,PGP);
    
    % 10 de Octubre
    
    [Ecuador,Argentina]=Partidos(Ecuador,Argentina,PGE,PGA);
    [Peru,Colombia]=Partidos(Peru,Colombia,PGP,PGCol);   
    [Paraguay,Venezuela]=Partidos(Paraguay,Venezuela,PGPA,PGV);
    [Brasil,Chile]=Partidos(Brasil,Chile,PGB,PGC);
    [Uruguay,Bolivia]=Partidos(Uruguay,Bolivia,PGU,PGBol);
    
    
    
    BrasilF    = TablaFinal(Brasil,1); 
    ColombiaF  = TablaFinal(Colombia,2);
    UruguayF   = TablaFinal(Uruguay,3);
    ChileF     = TablaFinal(Chile,4);
    ArgentinaF = TablaFinal(Argentina,5);
    PeruF      = TablaFinal(Peru,6);
    ParaguayF  = TablaFinal(Paraguay,7);
    EcuadorF   = TablaFinal(Ecuador,8);
    BoliviaF   = TablaFinal(Bolivia,9);
    VenezuelaF = TablaFinal(Venezuela,10);
    
    
    
    TablaPuntos=[BrasilF;ColombiaF;UruguayF;ChileF;ArgentinaF;PeruF;ParaguayF;EcuadorF;BoliviaF;VenezuelaF];

    
    for i=3:-1:1
        [~, s] = sort(TablaPuntos(:,i), 'desc');
        TablaPuntos=TablaPuntos(s,:);    
    end
 
    
  
    for i=1:5
        
        Selec=0;
        Selec=TablaPuntos(i,4);
                
        switch Selec
            
            case 1
                AciertoBrasil=AciertoBrasil+1;                  
            case 2
                AciertoColombia=AciertoColombia+1;
                
                switch i
                    
                    case 2
                        AciertoCol2=AciertoCol2+1;                        
                    case 3
                        AciertoCol3=AciertoCol3+1;  
                    case 4
                        AciertoCol4=AciertoCol4+1;  
                    case 5
                        AciertoCol5=AciertoCol5+1;  
                    otherwise
                        Selec=0;
                end
                
            case 3
                AciertoUruguay=AciertoUruguay+1;                
            case 4
                AciertoChile=AciertoChile+1;                
            case 5
                AciertoArgentina=AciertoArgentina+1;                
            case 6
                AciertoPeru=AciertoPeru+1;                  
            case 7
                AciertoParaguay=AciertoParaguay+1;                 
            case 8
                AciertoEcuador=AciertoEcuador+1;                 
            case 9
                AciertoBolivia=AciertoBolivia+1;                 
            case 10
                AciertoVenezuela=AciertoVenezuela+1;                 
            otherwise
                Selec=0;
        end
        
    end 
 end
 
disp(' ')
p=(AciertoBrasil/Intentos);
disp(['Probabilidad de que Brasil clasifique: ' num2str(p)])
p=(AciertoColombia/Intentos);
disp(['Probabilidad de que Colombia clasifique: ' num2str(p)])
p=(AciertoUruguay/Intentos);
disp(['Probabilidad de que Uruguay clasifique: ' num2str(p)])
p=(AciertoChile/Intentos);
disp(['Probabilidad de que Chile clasifique: ' num2str(p)])
p=(AciertoArgentina/Intentos);
disp(['Probabilidad de que Argentina clasifique: ' num2str(p)])
p=(AciertoPeru/Intentos);
disp(['Probabilidad de que Peru clasifique: ' num2str(p)])
p=(AciertoParaguay/Intentos);
disp(['Probabilidad de que Paraguay clasifique: ' num2str(p)])
p=(AciertoEcuador/Intentos);
disp(['Probabilidad de que Ecuador clasifique: ' num2str(p)])
p=(AciertoBolivia/Intentos);
disp(['Probabilidad de que Bolivia clasifique: ' num2str(p)])
p=(AciertoVenezuela/Intentos);
disp(['Probabilidad de que Venezuela clasifique: ' num2str(p)])
disp(' ')


p=(AciertoCol2/Intentos);
disp(['Probabilidad de que Colombia clasifique 2do: ' num2str(p)])
p=(AciertoCol3/Intentos);
disp(['Probabilidad de que Colombia clasifique 3ro: ' num2str(p)])
p=(AciertoCol4/Intentos);
disp(['Probabilidad de que Colombia clasifique 4to: ' num2str(p)])
p=(AciertoCol5/Intentos);
disp(['Probabilidad de que Colombia clasifique 5to: ' num2str(p)])
disp(' ')


