function calcular()

x = fastaread('Escherichia coli O157-H7 str. Sakai DNA- complete genome+plasmideos.fasta');
%O algorítmo inicia com a leitura do arquivo FASTA do genoma.
y = fastainfo('Escherichia coli O157-H7 str. Sakai DNA- complete genome+plasmideos.fasta');
%O algorítmo dá a leitura do arquivo FASTA do genoma com todas as infos

A1=0;
C1=0;
G1=0;
T1=0;

dna1 = x(1,1).Sequence;
dna2 = x(2,1).Sequence;
dna3 = x(3,1).Sequence;
%Leitura do algorítmo em três partes, pois a estrutura x é um struct de 3 divisões.

num1 = length(dna1);
num2 = length(dna2);
num3 = length(dna3);
%Leitura da quantidade de bases há em cada divisão do genoma.

for i = 1:num1
     %Loop pra ler a quantidade especifica das bases há
    if dna1(i)=='A'
        A1= A1+1;
     %Entrada caso a base for A (Adenina)
    elseif dna1(i)=='T'
        T1= T1+1;
     %Entrada caso a base for T (Timina)   
    elseif dna1(i)=='G'
        G1= G1+1;
     %Entrada caso a base for G (Guanina)   
    elseif dna1(i)=='C';
        C1= C1+1;
     %Entrada caso a base for C (Citosina)   
    end
end

for i = 1:num2
     %Loop pra ler a quantidade especifica das bases há
    if dna2(i)=='A'
        A1= A1+1;
     %Entrada caso a base for A (Adenina)
    elseif dna2(i)=='T'
        T1= T1+1;
     %Entrada caso a base for T (Timina)   
    elseif dna2(i)=='G'
        G1= G1+1;
     %Entrada caso a base for G (Guanina)   
    elseif dna2(i)=='C';
        C1= C1+1;
     %Entrada caso a base for C (Citosina)   
    end
end

for i = 1:num3
     %Loop pra ler a quantidade especifica das bases há
    if dna3(i)=='A'
        A1= A1+1;
     %Entrada caso a base for A (Adenina)
    elseif dna3(i)=='T'
        T1= T1+1;
     %Entrada caso a base for T (Timina)   
    elseif dna3(i)=='G'
        G1= G1+1;
     %Entrada caso a base for G (Guanina)   
    elseif dna3(i)=='C';
        C1= C1+1;
     %Entrada caso a base for C (Citosina)   
    end
end

Nucleotideo = A1 + C1 + T1 + G1;
	%Cálculo dos nucleotideos

Gc = (G1+C1)/Nucleotideo;
	%Cálculo do Gc

Temperatura=64.9+0.41*(Gc*100)-(500/Nucleotideo);
	%Cálculo da temperatura

op = fopen ('Infos do DNA de Escherechia coli.txt', 'W');
fprintf(op,'Sequencias = %d\n', y.NumberOfEntries)
fprintf(op,'Numero total de Nucleotideos = %d\n', Nucleotideo)
fprintf(op,'Conteudo Total de GC = %f\n', Gc)
fprintf(op,'Temperatura de anelamento de cada gene = %f\n', Temperatura)
fclose(op)

