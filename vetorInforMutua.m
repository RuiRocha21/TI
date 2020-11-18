function[IM]  = vetorInforMutua(query,target,alfabeto,step)
    tam=1;
    pos=1;
    for i=1:step:length(target)
       if(i+length(query)<=length(target))
           tam=tam+1;
       else
           break;
       end
    end
    IM=zeros(tam,1);
    
    for i=1:step:length(target)
        if(i+length(query)-1>length(target))
            break;
        end
        calculo = calculoIM(target(i:i+length(query)-1),query,alfabeto);
        
        IM(pos)=calculo;
        pos=pos+1;
    end
end