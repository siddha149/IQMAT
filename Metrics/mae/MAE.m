function MAE_value = MAE(Ref,Test)

if(size(Ref)~=size(Test))
    error('The size of reference image and test image are not equal.');
    
else
    [r c]=size(Ref);
    
    A=abs(double(Ref)-double(Test));
    
    MAE_value = sum(A(:))/(r*c);
end
end





