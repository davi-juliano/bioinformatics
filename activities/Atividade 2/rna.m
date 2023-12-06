function rna()

x = fastaread('Escherichia coli O157-H7 str. Sakai DNA- complete genome+plasmideos.fasta');
%O algorítmo inicia com a leitura do arquivo FASTA do genoma.

dna1 = x(1,1).Sequence;
dna2 = x(2,1).Sequence;
dna3 = x(3,1).Sequence;
%Leitura do algorítmo em três partes, pois a estrutura x é um struct de 3 divisões.

rna1 = dna1;
rna2 = dna2;
rna3 = dna3;
%Releitura do RNA para o próprio DNA.

num1 = length(rna1);
num2 = length(rna2);
num3 = length(rna3);
%Leitura da quantidade de bases há em cada divisão do genoma.

for i = 1:num1
    %Loop pra ler a quantidade especifica das bases há (1ª Divisão) 
    if dna1(i) == 'T'
        rna1(i) = 'U';
    %Entrada caso a base for uma Timina (T) e a substituição no RNA. (1ª Divisão)  
    end
end

for i = 1:num2
    %Loop pra ler a quantidade especifica das bases há (2ª Divisão) 
    if dna2(i) == 'T'
        rna2(i) = 'U';
      %Entrada caso a base for uma Timina (T) e a substituição no RNA. (2ª Divisão) 
    end
end

for i = 1:num3
    %Loop pra ler a quantidade especifica das bases há (3ª Divisão)  
    if dna3(i) == 'T'
        rna3(i) = 'U';
      %Entrada caso a base for uma Timina (T) e a substituição no RNA. (3ª Divisão) 
    end
end

x(1,1).Header = '>NC_002695.2 Escherichia coli O157:H7 str. Sakai RNA, complete genome';
x(1,1).Sequence = rna1;
x(2,1).Sequence = rna2;
x(3,1).Sequence = rna3;
    %Recolocação de cada RNA em um arquivo fasta específico.

fastawrite('Escherichia coli RNA.fasta',x);