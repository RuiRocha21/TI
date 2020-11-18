clc, clear, close all
caminho_kid = '.\dados\Kid.bmp';
imagem_kid = imread(caminho_kid);
info = imfinfo(caminho_kid);
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
 %entropia 6.95
%pergunta4
% valor medio de hoffman 6.98

% variancia 2.09
%pergunta 5
%agrupamento de simbolos 4.9


%-----------------------Kid.bmp
figure(1);

histograma_kid=histograma(imagem_kid,alfabeto);
title('Kid.bmp');
axis([0, 255, 0, 10000]);

disp(sprintf('pergunta 3'));
entropia_kid = entropia(histograma_kid);
format long;
disp(sprintf('Entropia: %f bits por simbolo\n',entropia_kid));


disp(sprintf('pergunta 4'));
hufflen_kid = hufflen(histograma_kid);
valor_medio_kid = valor_medio_hufflen(hufflen_kid,histograma_kid);
disp(sprintf('valor medio de hufflen: %f bits por simbolo',valor_medio_kid));
%variancia
varKid = var(hufflen_kid,histograma_kid);
disp(sprintf('variancia da media de hufflen: %f bits por simbolo\n',varKid));

disp(sprintf('pergunta 5'));
agrupa_2_simbolos = agrupamento_de_2_simbolos(histograma_kid);
final = entropia(agrupa_2_simbolos);
final = final/2;
disp(sprintf('agrupamento de 2 simbolos: %f bits/2 simbolos do alfabeto original \n',final));
