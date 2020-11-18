function [prob] = agrupamento_de_2_simbolos(fonte)
%funçao para agrupar simbolos e retorna uma sequência de dois símbolos contíguos
    
     pos =1;
     prob = 0;
% 
%     vec = reshape(fonte,1,[]);
%     tam = length(vec);
%     z = zeros(length(nrBits*nrBits));
%     if mod (tam,2) ~= 0
%         vec = [vec 0];
%         tam= tam + 1;
%     end    
%     
%     %shift left -> multiplicar nr Bits -> 1º*3+2ª
%     
%     for i=1:2:tam
%         a = vec(i);
%         b = vec(i+1);
%         for j=1:2:tam
%             if vec(j) == a && vec(j+1) == b
%                 z(pos) =vec(j)+vec(j+1);
%             end
%         end
%         pos=pos+1;
    [nl, nc] = size(fonte);
    
    
    [elem] =  nl * nc;
    agrupa = zeros(length(elem),1);
    for i=1:1:size(nl)
        for j = 1:1:size(nc)
            
               id = (length(nc)*nc(j)) +nc(j);
               agrupa(pos) = id;
               pos=pos+1;
            
        end
    end

    for k=1:1:length(elem)
       if  elem(k)== agrupa(k) 
          prob=prob+1;
       end
    end
    prob=prob/length(elem);
 end