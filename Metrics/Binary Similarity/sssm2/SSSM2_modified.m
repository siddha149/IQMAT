function SSSM2_value = SSSM2_modified(Test)

[r c]=size(Test);

B7=bitget(Test,7);

[a7,b7,c7,d7]=get_a_b_c_d_modified(B7,r,c);

B8=bitget(Test,8);

[a8,b8,c8,d8]=get_a_b_c_d_modified(B8,r,c);

m7=a7/(a7+(2*(b7+c7)));

m8=a8/(a8+(2*(b8+c8)));

SSSM2_value=m7-m8;
end