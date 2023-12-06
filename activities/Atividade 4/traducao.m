function traducao()

x = fastaread('Ecoli Srt Sakai gene sequences.fasta');
%O algorítmo inicia com a leitura do arquivo FASTA do genoma.
y = fastainfo('Ecoli Srt Sakai gene sequences.fasta');
%O algorítmo dá a leitura do arquivo FASTA do genoma com todas as infos

for i=1:y.NumberOfEntries
    
    dna1 = x(i,1).Sequence;
    
    dna2 = dna1;
       
    dna2 = nt2aa(dna1);
       
    x(i,1).Sequence = dna2;
end

fastawrite('Escherichia coli RNA(Frame 1).fasta',x);

a = fastaread('Ecoli Srt Sakai gene sequences.fasta');
%O algorítmo inicia com a leitura do arquivo FASTA do genoma.
b = fastainfo('Ecoli Srt Sakai gene sequences.fasta');
%O algorítmo dá a leitura do arquivo FASTA do genoma com todas as infos

for i=1:b.NumberOfEntries
    
    dna3 = a(i,1).Sequence;
    
    dna4 = dna3;
       
    dna4 = nt2aa(dna3, 'Frame', 2);
       
    a(i,1).Sequence = dna4;
end

fastawrite('Escherichia coli RNA(Frame 2).fasta',a);

c = fastaread('Ecoli Srt Sakai gene sequences.fasta');
%O algorítmo inicia com a leitura do arquivo FASTA do genoma.
d = fastainfo('Ecoli Srt Sakai gene sequences.fasta');
%O algorítmo dá a leitura do arquivo FASTA do genoma com todas as infos

for i=1:d.NumberOfEntries
    
    dna5 = c(i,1).Sequence;
    
    dna6 = dna5;
       
    dna6 = nt2aa(dna5,'Frame', 3);
       
    c(i,1).Sequence = dna6;
end

fastawrite('Escherichia coli RNA(Frame 3).fasta',c);