X=rand(50,3)*50;
Q=zeros(1,50)+10;
M=zeros(1,50)+1;
speed=zeros(50,3);
B=[0 0 0];
dt=1e-2;
for i=1:1000
    [speed,X]=calculate(X,speed,M,Q,B,dt);
    figure(1);
     plot3(X(:,1),X(:,2),X(:,3),"or")
     xlim([0,50])
     ylim([0,50])
     zlim([0,50])
     drawnow
    [Wp,Wk]=CalcEnergy(M,speed,Q,X);
    [Wsum,Wksum,Wpsum]=EnergyS(Wp,Wk,Q)
    figure(2);
    plot(i,Wpsum,"or")
    xlim([0,1000])
    ylim([0,10000])
    drawnow
    hold on;
    figure(3);
    plot(i,Wksum,"or")
    xlim([0,1000])
    ylim([0,10000])
    drawnow
    hold on;
    figure(4);
    plot(i,Wsum,"or")
    xlim([0,1000])
    ylim([0,10000])
    drawnow
    hold on;
end

