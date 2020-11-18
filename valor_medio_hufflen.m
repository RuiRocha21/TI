function[media] = valor_medio_hufflen(fonte_hufflen,fonte_histograma)

    tamanho_hufflen=length(fonte_hufflen);
    soma=0;
    nr=0;
    for i=1:tamanho_hufflen
        if(fonte_hufflen(i)~=0)
            soma=soma+fonte_hufflen(i)*fonte_histograma(i);
            nr=nr+fonte_histograma(i);
        end
    end;
    media=soma/nr;
end



