function[potential,kinetic]= potential_energy(r1,r2,Q1,Q2,speed)
    rad=r2-r1;
    potential=(Q1*Q2)*norm(rad);
end