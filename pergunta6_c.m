clc, clear, close all

caminho_guitarSolo = '.\dados\guitarSolo.wav';
caminho_SONG1 = '.\dados\Song01.wav';
caminho_SONG2 = '.\dados\Song02.wav';
caminho_SONG3 = '.\dados\Song03.wav';
caminho_SONG4 = '.\dados\Song04.wav';
caminho_SONG5 = '.\dados\Song05.wav';
caminho_SONG6 = '.\dados\Song06.wav';
caminho_SONG7 = '.\dados\Song07.wav';

maximos=zeros(7,1);
id=1:7;

%-------------ficheiro guitarSolo
[query, fs1] = audioread (caminho_guitarSolo);
info = audioinfo(caminho_guitarSolo);
nrBitsQuant1 = info.BitsPerSample;
d=2/(2^nrBitsQuant1);
alfabeto= -1:d:1-d;
query=query(:,1);
step=floor(length(query)/4);

%--------------------ficheiro Song1
figure(1);
[song1, fs1] = audioread (caminho_SONG1);
song1=song1(:,1);
SONG1=vetorInforMutua(query,song1,alfabeto,step);
disp(sprintf('informaçao mútua do ficheiro SONG01.wav : %f \n',SONG1));
plot(SONG1);
title('Song01.wav');
maximos(1)=max(SONG1);

%--------------------ficheiro Song2
figure(2);
[song2, fs1] = audioread (caminho_SONG2);
song2=song2(:,1);
SONG2=vetorInforMutua(query,song2,alfabeto,step);
disp(sprintf('informaçao mútua do ficheiro SONG02.wav : %f \n',SONG2));
plot(SONG2);
title('Song02.wav');
maximos(2)=max(SONG2);

%--------------------ficheiro Song3
figure(3);
[song3, fs1] = audioread (caminho_SONG3);
song3=song3(:,1);
SONG3=vetorInforMutua(query,song3,alfabeto,step);
disp(sprintf('informaçaomútua do ficheiro SONG03.wav : %f \n',SONG3));
plot(SONG3);
title('Song03.wav');
maximos(3)=max(SONG3);

%--------------------ficheiro Song4
figure(4);
[song4, fs1] = audioread (caminho_SONG4);
song4=song4(:,1);
SONG4=vetorInforMutua(query,song4,alfabeto,step);
disp(sprintf('informaçao mútua do ficheiro SONG04.wav : %f \n',SONG4));
plot(SONG4);
title('Song04.wav');
maximos(4)=max(SONG4);

%--------------------ficheiro Song5
figure(5);
[song5, fs1] = audioread (caminho_SONG5);
song5=song5(:,1);
SONG5=vetorInforMutua(query,song5,alfabeto,step);
disp(sprintf('informaçao mútua do ficheiro SONG05.wav : %f \n',SONG5));
plot(SONG5);
title('Song05.wav');
maximos(5)=max(SONG5);

%--------------------ficheiro Song6
figure(6);
[song6, fs1] = audioread (caminho_SONG6);
song6=song6(:,1);
SONG6=vetorInforMutua(query,song6,alfabeto,step);
% disp(sprintf('informaçao mútua do ficheiro SONG06.wav : %f \n',SONG6));
disp(sprintf('%f; ',SONG6));
plot(SONG6);
title('Song06.wav');
maximos(6)=max(SONG6);

%--------------------ficheiro Song7
figure(7);
[song7, fs1] = audioread (caminho_SONG7);
song7=song7(:,1);
SONG7=vetorInforMutua(query,song7,alfabeto,step);
disp(sprintf('%f; ',SONG7));
plot(SONG7);
title('Song07.wav');
maximos(7)=max(SONG7);

%-------------resultados de maximos
disp('Maximos:');
[maximos,id]=ordenar_maximos(maximos,id);
for i=1:length(maximos)
    disp(sprintf('Song0%d - %d',id(i),maximos(i)));
end