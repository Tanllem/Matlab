function[new_speed,new_coord]= calculate(coord,speed,m,q, dt)
    number=size(coord,1);
    R=zeros(number,3);
%      for i=1:number
%          F= induction(speed(i,:),q(i));
%          R(i,:)= R(i,:)+F;
%      end 
    for i=1:(number-1)
        for j=(i+1):number
            R(i,:)= R(i,:)-qulon(coord(i,:),coord(j,:),q(i),q(j));
            R(j,:)= R(j,:)+qulon(coord(i,:),coord(j,:),q(i),q(j));
        end   
    end
    new_speed=zeros(number,3);
    new_coord=zeros(number,3);
    for i=1:number
        del_r=speed(i,:)*dt;
        new_speed(i,:)=speed(i,:)+R(i,:)*dt/m(i);
        [new_coord(i,:),new_speed(i,:)]= move_limit(coord(i,:),new_speed(i,:),del_r);
        
    end
end