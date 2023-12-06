function arvore()

Sequencia1 = fastaread('sequence.fasta'); %Leitura da Sequencia

SequenciaMultiAlinhada = multialign(Sequencia1); %Sequencia Multialinhada sendo construída

seqalignviewer(SequenciaMultiAlinhada) %Mostra quais foram os alinhamentos da sequencia e sua relação com a Sequencia Consensual

Distancia = seqpdist(Sequencia1,'ScoringMatrix','GONNET'); %Score de comparação com a matriz Gonnet

Arvore = seqlinkage(Distancia,'average',Sequencia1); %Árvore filogenética criada

SequenciaConsesus = seqconsensus(SequenciaMultiAlinhada); %Sequencia consensual criada

phytreeviewer(Arvore) %O Plot da Árvore Filogenética

fastawrite('SequenciaConsensus_MultiAlignment.fasta',SequenciaConsesus); %A escrita da Sequencia Consensual em fasta

results = fopen('Interpretação_Dados_Arvore.txt','w'); %Relação dos resultados obtidos

fprintf(results, 'Os resultados obtidos são dados de acordo com a árvore plotada no código (phytreeviewer) e seus dados são de acordo com o multialinhamento feito pelo mesmo, onde o alinhamento consensual é dado pelo aquivo fasta SequenciaConsensus_MultiAlignment.fasta .'); 

end