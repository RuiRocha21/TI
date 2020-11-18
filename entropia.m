function[res] = entropia(fonte)
%funçao para calcular a entropia de uma fonte de informaçao

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