function[Wp,Wk]=CalcEnergy(M,speed,Q,X)
q=size(Q,2);
Wk=zeros(1,q);
Wp=zeros(1,q);
for i=1:q
    Wk(i)=EnergyK(M(i),speed(i,:));
end

for i=1:q-1
    for j=i+1:q
        Wp(i)=(Wp(i)+EnergyP(Q(i),Q(j),X(i,:),X(j,:)));
        Wp(j)=(Wp(j)+EnergyP(Q(i),Q(j),X(i,:),X(j,:)));
    end
end
