clc, clear, close all

caminho_guitarSolo = '.\dados\guitarSolo.wav';
figure(4);
[som_guitarSolo,fs] = audioread(caminho_guitarSolo);
info = audioinfo(caminho_guitarSolo);
nrBits = info.BitsPerSample;

d=2/(2^nrBits);
alfabeto_audio = -1:d:1-d;

%------resultados
%entropia
%7.35
%pergunta4
%  valor medio de hoffman 7.37
% variancia  0.75
%pergunta 5
%agrupamento de simbolos 3.23

disp(sprintf('pergunta 3'));
histograma_guitarSolo = histograma(som_guitarSolo,alfabeto_audio);
entropia_guitarSolo = entropia(histograma_guitarSolo);
disp(sprintf('Entropia: %4.5f bits por simbolo\n', entropia_guitarSolo));

disp(sprintf('pergunta 4'));
hufflen_guitarSolo = hufflen(histograma_guitarSolo);
valor_medio_hufflen_guitarSolo = valor_medio_hufflen(hufflen_guitarSolo,histograma_guitarSolo);
disp(sprintf('Valor medio de hufflen: %f bits por simbolo', valor_medio_hufflen_guitarSolo));
%variancia
varGuitar = var(hufflen_guitarSolo,histograma_guitarSolo);
disp(sprintf('variancia da media de hufflen: %f bits por simbolo\n',varGuitar));


disp(sprintf('pergunta 5'));
agrupa_2_simbolos = agrupamento_de_2_simbolos(histograma_guitarSolo);
final = entropia(agrupa_2_simbolos);
% final = final/2;
disp(sprintf('agrupamento de 2 simbolos: %f bits/2 simbolos do alfabeto original \n',final));
