function [maximos,id] = ordenar_maximos(maximos,id)
    for i=1:length(maximos)
        aux=maximos(i);
        for y=i:length(maximos)
            if(aux<maximos(y))
                aux2=id(i);
                id(i)=id(y);
                id(y)=aux2;
                
                aux=maximos(y);
                maximos(y)=maximos(i);
                maximos(i)=aux;
            end
        end
    end
end
