% V=[2 3 4;5 6 7;8 9 9];
% a=1:2:10;
% w=V(1,:);
% S1=size(V);
% M=[2 5 4;5 9 7;8 10 9];
% S2=size(M); 
% NEW= multiplication(V,M);
coord=[5 3 3; 10 3 3];
speed=[0 0 0;0 0 0];
m=zeros(1,2)+1;
q=zeros(1,2)+5;
dt=1e-2;
number=size(coord,1);

for k=1:1000
    [speed,coord]= calculate(coord,speed,m,q, dt);
%        plot3(coord(:,1),coord(:,2),coord(:,3),"or")
%        xlim([0,15])
%        ylim([0,15])
%        zlim([0,15])
%       drawnow    
    
    potential=zeros(1,number);
    kinetic=zeros(1,number);
    full_potential_energy=0;
    full_kinetic_energy=0;
    for i=1:(number-1)
        for j=(i+1):number
            potential(i)= potential(i)+potential_energy(coord(i,:),coord(j,:),q(i),q(j));
            potential(j)= potential(j)+potential_energy(coord(i,:),coord(j,:),q(i),q(j));
        end
        full_potential_energy=full_potential_energy+potential(i);
        kinetic(i)=(1/2)*m(i)*(norm(speed(i,:))^2);
        full_kinetic_energy=full_kinetic_energy+kinetic(i);
    end
    full_potential_energy=0.5*(full_potential_energy+potential(number));
    kinetic(number)=0.5*m(i)*(norm(speed(number,:))^2)
    full_kinetic_energy=full_kinetic_energy+kinetic(number);
    energy=full_potential_energy+full_kinetic_energy; 
    
    figure(1);
    hold on
    plot(k,full_potential_energy,"or",k,full_kinetic_energy,"ob")
    xlim([0,600])
    ylim([0,20])        
    drawnow
    
    figure(2);
    hold on
    plot(k,energy,"ob")
    xlim([0,600])
    ylim([0,20])        
    drawnow

end


            
            
    

