function[new_coord,new_speed]= move_limit(new_coord,new_speed,del_r)
h=15;
for j=1:3
if ((new_coord(j)+del_r(j)) >=h) || ((new_coord(j)+del_r(j)) <=0)
    new_speed(j)=-new_speed(j);
    new_coord(j)=new_coord(j);
else
    new_coord(j)=new_coord(j)+del_r(j);
end
end
    