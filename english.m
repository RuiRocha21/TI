clc, clear, close all

%------resultados
%pergunta 3
%entropia 4.22
%pergunta4
% valor medio de hoffman 4.25
% variancia 1.10
%pergunta 5
%agrupamento de simbolos 4.46

disp(sprintf('pergunta 3'));
caminho_english_txt = '.\dados\english.txt';
figure(5);
ficheiro = fopen(caminho_english_txt,'r');
alfabeto_texto=double(['A':'Z' 'a':'z' ]);

leitura_ficheiro = fscanf(ficheiro,'%s');
texto_sem_pontos = retira_pontos(leitura_ficheiro);
histograma_texto = histograma(texto_sem_pontos,alfabeto_texto);
title('english.txt');
axis([0, 60, 0, 325]);


entropia_texto = entropia(histograma_texto);
disp(sprintf('Entropia: %f bits por simbolo\n', entropia_texto));

disp(sprintf('pergunta 4'));
hufflen_texto = hufflen(histograma_texto);
valor_medio_hufflen_texto = valor_medio_hufflen(hufflen_texto,histograma_texto);
disp(sprintf('Valor medio de hufflen: %f bits por simbolo', valor_medio_hufflen_texto));
%variancia
varTexto = var(hufflen_texto,histograma_texto);
disp(sprintf('variancia da media de hufflen: %f bits por simbolo\n',varTexto));

%pergunta 5
disp(sprintf('pergunta 5'));
agrupa_2_simbolos = agrupamento_de_2_simbolos(histograma_texto);
final = entropia(agrupa_2_simbolos);
% final = final/2;
disp(sprintf('agrupamento de 2 simbolos: %f bits/2 simbolos do alfabeto original \n',final));
