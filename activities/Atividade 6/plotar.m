function plotar()

x = fastaread('Proteina.fasta');

y = fastaread('Proteina2.fasta');

proteinpropplot(x, 'propertytitle', 'Hydrophobicity (Kyte & Doolittle)')

proteinpropplot(y, 'propertytitle', 'Hydrophobicity (Kyte & Doolittle)')