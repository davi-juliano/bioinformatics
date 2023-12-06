function Escore1()


Sequencia1='GGGCAATATGAA---TTTAAA---GTAGAATACCAAATGATAGAAACAGACTGCCTGA-TTGATCATTTTGATTTTTTAAAGTGTGTA------TAAATTGCTGTTCCTTAATTTGATTA';
Sequencia2='GGGCAATATGAAATTTTTAAAGGAGTAGAATACGAAATGATAGACACAGACTGCCTGAATTGAGGATTTTGATTTCTTAAATTGTGTTTCTTTCTAAATTGCTGTTCCTTAATTTTATTA';

Scorealign = nwalign(Sequencia1,Sequencia2,'Alphabet','NT');
TAM = length(Sequencia1);
ScoreATGC = 0;
ScoreIdentidade = 0;
ScoreMatriz = [5 -1 -2 -1 -3;-1 5 -3 -2 -4;-2 -3 5 -2 -2;-1 -2 -2 5 -1;-3 -4 -2 -1 0];

for i=1:1:TAM
    if(Sequencia1(i)==Sequencia2(i))
        ScoreIdentidade = ScoreIdentidade + 1;
        ScoreATGC = ScoreATGC + 5;
    
    else
        switch(Sequencia1(i))
            case 'A'
                iA = 1;
            case 'T'
                iA = 2;
            case 'G'
                iA = 3;
            case 'C'
                iA = 4;
            otherwise 
                iA = 5;
        end
         switch(Sequencia2(i))
            case 'A'
                iB = 1;
            case 'T'
                iB = 2;
            case 'G'
                iB = 3;
            case 'C'
                iB = 4;
            otherwise 
                iB = 5;
         end
       ScoreATGC = ScoreATGC + ScoreMatriz(iA,iB);  
    end
    
    
end

results = fopen('Atividade8_Relatorio_Escores.txt','w');

fprintf(results, 'Escores calculados pela matriz identidade: %d\r\n', ScoreIdentidade); 
fprintf(results, 'Escores calculados pela matriz de escores: %d\r\n', ScoreATGC);
fprintf(results, 'Escores calculados pela funcao nwalign: %f\r\n', Scorealign);




     
     
