clc, clear, close all

caminho_guitarSolo = '.\dados\guitarSolo.wav';
caminho_repeat = '.\dados\target01 - repeat.wav';
caminho_repeatNoise = '.\dados\target02 - repeatNoise.wav';

[query, fs1] = audioread (caminho_guitarSolo);
info = audioinfo(caminho_guitarSolo);
nrBitsQuant1 = info.BitsPerSample;
d=2/(2^nrBitsQuant1);
alfabeto= -1:d:1-d;
query=query(:,1);
step=floor(length(query)/4);

%--------------ficheiro target01 - repeat
figure(1);
[target1, fs1] = audioread (caminho_repeat);
info_repeat = audioinfo(caminho_repeat);
nrBitsQuant2 = info_repeat.BitsPerSample;
target1=target1(:,1);
informacaoMutua=vetorInforMutua(query,target1,alfabeto,step);
plot(informacaoMutua);
title('target01 - repeat.wav');

%-----------------ficheiro target02 - repeatNoise
figure(2);
[target2, fs1] = audioread (caminho_repeatNoise);
info_Noise = audioinfo(caminho_repeatNoise);
nrBitsQuant3 = info_Noise.BitsPerSample;
target2=target2(:,1);
infoMutuaNoise=vetorInforMutua(query,target2,alfabeto,step);
plot(infoMutuaNoise);
title('target02 - repeatNoise.wav');