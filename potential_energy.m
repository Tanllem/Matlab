function potential= potential_energy(r1,r2,Q1,Q2)
    rad=r2-r1;
    potential=(Q1*Q2)/norm(rad);
end