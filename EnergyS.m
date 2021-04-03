function[Wsum,Wksum,Wpsum]=EnergyS(Wp,Wk,Q)
    q=size(Q,2);
    Wksum=0;
    Wpsum=0;
    for i=1:q
        Wksum=Wksum+Wk(i);
        Wpsum=Wpsum+(1/2)*Wp(i);
    end
    Wsum=Wksum+Wpsum;
end