% x = randn(10000,1);
clc
%ImportTXT
valorAnterior = 1;
numeroParadas = 0;
contagem0 = 0;
deleteM = [];
delete = [];
operacoes = 0;

x = table2array(OPERACAO);

for i = 1:length(x)
    valorAtual = x(i);
    if (valorAtual==0)
        contagem0=contagem0+1;
        deleteM = [deleteM, i];
        if (contagem0>18)
            delete = [delete,deleteM];
            deleteM=[];
        end
    else
        contagem0=0;
    end
    if (valorAtual == 0 && valorAnterior ~= 0)
        numeroParadas = numeroParadas + 1;
    end
    valorAnterior = x(i);
end
x(delete) = [];
tamanhoAmostra = length(x);
nbins = 100;
h = histogram(x,nbins);
pos = find(h.Values == max(h.Values));
VdL = mean(h.BinEdges(pos:pos+1));
eficienciaMaquina = 0;
for i = 1:length(h.Values)
    valor = h.Values(i);
    percentualValor = valor/tamanhoAmostra;
    percentVelocidade = h.BinEdges(i)/VdL;
    eficienciaPonto = percentualValor*percentVelocidade;
    eficienciaMaquina = eficienciaMaquina+eficienciaPonto;
end

tempoTotal = length(x)*10;
tempoParadas = (1-eficienciaMaquina)*tempoTotal;
MTTR = tempoParadas/numeroParadas;
MTBF = (-eficienciaMaquina*MTTR)/(eficienciaMaquina-1);
disp('MTTR: ')
disp(MTTR/60)
disp('MTBF: ')
disp(MTBF/60)