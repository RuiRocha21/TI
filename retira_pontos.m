function [texto_final]= retira_pontos(texto_original)
%funçao para retirar pontos "." de um texto
%no final devolve o mesmo sem os pontos de final
    a=1;
    texto_final=zeros(0,1);
    for i=1:length(texto_original)
        if(texto_original(i)~='.')
            texto_final(a)=texto_original(i);
            a=a+1;
        end
    end
end