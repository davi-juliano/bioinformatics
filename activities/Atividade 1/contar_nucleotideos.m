function contar_nucleotideos()
x = fastaread('Yellow fwever virus complete genome NC_002031.1 sequence.fasta');
% O algorítmo inicia com a leitura do arquivo FASTA do genoma.

A1=0;
C1=0;
G1=0;
T1=0;
num = length(x.Sequence);
%Leitura da quantidade de bases há

for i = 1:num
     %Loop pra ler a quantidade especifica das bases há
    if x.Sequence(i)=='A'
        A1= A1+1;
     %Entrada caso a base for A (Adenina)
    elseif x.Sequence(i)=='T'
        T1= T1+1;
     %Entrada caso a base for T (Timina)   
    elseif x.Sequence(i)=='G'
        G1= G1+1;
     %Entrada caso a base for G (Guanina)   
    elseif x.Sequence(i)=='C';
        C1= C1+1;
     %Entrada caso a base for C (Citosina)   
    end
end


fprintf('A= %d\n', A1)
fprintf('T= %d\n', T1)
fprintf('G= %d\n', G1)
fprintf('C= %d\n', C1)
%Amostragem dos resultados

end