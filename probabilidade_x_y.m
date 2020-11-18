function[prob] = probabilidade_x_y(target,query,alfabeto_target,alfabeto_query)
    prob=0;
    for i=1:length(query)
        if(target(i)== alfabeto_target)
            if(query(i)==alfabeto_query)
                prob=prob+1;
            end
        end
    end
    prob=prob/length(query);
end