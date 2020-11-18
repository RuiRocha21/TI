clc, clear, close all
caminho_homer = '.\dados\homer.bmp';
imagem_homer = imread(caminho_homer);
info = imfinfo(caminho_homer);
nrBits = info.BitDepth;
alfabeto=zeros(2^nrBits,1);
for i=0:2^nrBits
   alfabeto(i+1)=i; 
end
alfabeto = 0:255;

%pergunta 1
%histograma(fonte,alfabeto)
%pergunta 2
%entropia(fonte)
%pergunta 3
%HISTOGRAMAS
%RESULTADOS
%compressao maxima(entropia)

%------resultados
%pergunta 3

%3.46
%pergunta4
%  valor medio de hoffman 3.54
% variancia 13.1
%pergunta 5
%agrupamento de simbolos 2.41



figure(2);
histograma_homer = histograma(imagem_homer,alfabeto);
title('homer.bmp');
axis([0, 255, 0, 23000]);

entropia_homer = entropia(histograma_homer);
disp(sprintf('pergunta 3'));
disp(sprintf('Entropia: %f bits por simbolo\n', entropia_homer));

%pergunta 4
disp(sprintf('pergunta 4'));
hufflen_homer = hufflen(histograma_homer);
valor_medio_homer = valor_medio_hufflen(hufflen_homer,histograma_homer);
disp(sprintf('Valor medio de hufflen: %f bits por simbolo', valor_medio_homer));
%variancia
varHomer = var(hufflen_homer,histograma_homer);
disp(sprintf('variancia de hufflen: %f bits por simbolo\n',varHomer));

%pergunta 5
% disp(sprintf('pergunta 5'));
agrupa_2_simbolos = agrupamento_de_2_simbolos(histograma_homer);
final = entropia(agrupa_2_simbolos);
disp(sprintf('agrupamento de 2 simbolos: %f bits/2 simbolos do alfabeto original \n',final));

