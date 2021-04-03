function[NEW]= multiplication(V,M)
    S1=size(V,1);
    S2=size(V,2);
    S4=size(M,2);
    NEW=zeros(S1,S4);
    m=0;
    for i = 1:S1
        for j = 1:S2
            for k = 1:S2
            m=m+V(i,k)*M(k,j); 
            end
        NEW(i,j)=m
        m=0;
        end


    end
end