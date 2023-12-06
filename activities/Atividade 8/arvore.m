function arvore()

Sequencia1 = fastaread('sequence.fasta'); %Leitura da Sequencia

SequenciaMultiAlinhada = multialign(Sequencia1); %Sequencia Multialinhada sendo constru�da

seqalignviewer(SequenciaMultiAlinhada) %Mostra quais foram os alinhamentos da sequencia e sua rela��o com a Sequencia Consensual

Distancia = seqpdist(Sequencia1,'ScoringMatrix','GONNET'); %Score de compara��o com a matriz Gonnet

Arvore = seqlinkage(Distancia,'average',Sequencia1); %�rvore filogen�tica criada

SequenciaConsesus = seqconsensus(SequenciaMultiAlinhada); %Sequencia consensual criada

phytreeviewer(Arvore) %O Plot da �rvore Filogen�tica

fastawrite('SequenciaConsensus_MultiAlignment.fasta',SequenciaConsesus); %A escrita da Sequencia Consensual em fasta

results = fopen('Interpreta��o_Dados_Arvore.txt','w'); %Rela��o dos resultados obtidos

fprintf(results, 'Os resultados obtidos s�o dados de acordo com a �rvore plotada no c�digo (phytreeviewer) e seus dados s�o de acordo com o multialinhamento feito pelo mesmo, onde o alinhamento consensual � dado pelo aquivo fasta SequenciaConsensus_MultiAlignment.fasta .'); 

end