function[new_coord,new_speed]= move_limit(new_coord,new_speed,i,del_speed)
h=10;

for j=1:3
if (new_coord(i,j)>=h) 
    new_speed(i,j)=-new_speed(i,j);
end
end
    