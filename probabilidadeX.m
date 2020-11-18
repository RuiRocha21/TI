function[probX] =  probabilidadeX(sinal,i,alfabeto,tamanho)
    probX=0;
    for y=i:i+tamanho-1
        if(y>length(sinal))
            break;
        end
        if(sinal(y)==alfabeto)
            probX=probX+1;
        end
    end
    probX=probX/tamanho;
end