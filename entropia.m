function[res] = entropia(fonte)
%fun�ao para calcular a entropia de uma fonte de informa�ao

    res =0;
    tamanho = sum(fonte);
    for i=1:length(fonte)
        if(fonte(i)~=0)
            prob = fonte(i)/tamanho;
            res = res + (prob*log2(prob));
        end
    end
    res=res*-1;
end