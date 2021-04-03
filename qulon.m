function[R]= qulon(r1,r2,Q1,Q2)
    rad=r2-r1;
    
    R=(Q1*Q2)*((rad)/(norm(rad))^3);
end