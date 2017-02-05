function SSSM3_value = SSSM3_modified(Test)

[r c]=size(Test);

B7=bitget(Test,7);

[a7,b7,c7,d7]=get_a_b_c_d_modified(B7,r,c);

B8=bitget(Test,8);

[a8,b8,c8,d8]=get_a_b_c_d_modified(B8,r,c);

m7=(a7+d7)/(b7+c7);

m8=(a8+d8)/(b8+c8);

SSSM3_value=m7-m8;
end