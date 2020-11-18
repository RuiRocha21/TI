clc, clear, close all

caminho_homerBin = '.\dados\homerBin.bmp';

imagem_kid = imread(caminho_homerBin);
info = imfinfo(caminho_homerBin);
nrBits = info.BitDepth;
alfabeto=zeros(2^nrBits,1);
for i=0:2^nrBits
   alfabeto(i+1)=i; 
end
alfabeto = 0:255;
%------resultados
%pergunta 3
%0.6
%pergunta4
% valor medio de hoffman 1
% variancia 0
%pergunta 5
%agrupamento de simbolos 0.39

% 4.72
% 2.41
% 0.39
% 5.78
% 3.65

disp(sprintf('pergunta 3'));
figure(3);
imagem_homer_bin = imread(caminho_homerBin);
histograma_homer_bin = histograma(imagem_homer_bin,alfabeto);
title('homer_bin.bmp');
axis([0, 255, 0, 30000]);

entropia_homer_bin = entropia(histograma_homer_bin);



disp(sprintf('Entropia: %f bits por simbolo\n', entropia_homer_bin));

%pergunta 4

disp(sprintf('pergunta 4'));
hufflen_homer_bin = hufflen(histograma_homer_bin);
valor_medio_homer_bin = valor_medio_hufflen(hufflen_homer_bin,histograma_homer_bin);
disp(sprintf('Valor medio de hufflen: %f bits por simbolo', valor_medio_homer_bin));
%variancia

varBin = var(hufflen_homer_bin,histograma_homer_bin);
disp(sprintf('variancia da media de hufflen: %f bits por simbolo\n',varBin));

% %pergunta 5
% disp(sprintf('pergunta 5'));
agrupa_2_simbolos = agrupamento_de_2_simbolos(histograma_homer_bin);
final = entropia(agrupa_2_simbolos);
%final = final/2;
disp(sprintf('agrupamento de 2 simbolos: %f bits/2 simbolos do alfabeto original \n',final));
