function[hist] = histograma(fonte,alfabeto)
%funçao dada uma fonte de informaçao e um alfabeto, devolve o histograma da
%fonte de informaçao
%histcounts
    
    edges = [alfabeto alfabeto(end)+(alfabeto(2)-alfabeto(1))];
    [hist] = histcounts(fonte,edges);
    
%     for i=1:m
%             procura = ocorrencias(fonte,alfabeto(i));
%             hist(i)=procura;
%    
%     end
    
    %plot(hist,'blue');
    bar(hist);
    
    title('Histograma');
end