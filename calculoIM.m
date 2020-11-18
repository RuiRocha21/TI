function[res]  = calculoIM(target,query,alfabeto)
    prob_target=zeros(length(alfabeto),1);
    prob_query=zeros(length(alfabeto),1);
    
    for i=1:length(alfabeto)
       for y=1:length(query)
           if(target(y)==alfabeto(i))
               prob_target(i)=prob_target(i)+1;
           end
           if(query(y)==alfabeto(i))
               prob_query(i)=prob_query(i)+1;
           end
       end
       prob_query(i)=prob_query(i)/length(query);
       prob_target(i)=prob_target(i)/length(query);
    end
    
    res=0;
    for i=1:length(alfabeto)
       for y=1:length(alfabeto)
            if(prob_target(i)~=0 && prob_query(y)~=0)
                p=probabilidade_x_y(target,query,alfabeto(i),alfabeto(y));
                if(p~=0)
                    res=res+p*log2(p/(prob_target(i)*prob_query(y)));
                end
            end
        end
    end
end