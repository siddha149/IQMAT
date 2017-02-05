function MSE_value = MSE(Ref,Test)

if(size(Ref)~=size(Test))
    error('The size of the 2 images are unequal')

else
    [r c]=size(Ref);

    MSEmatrix=(double(Ref)-double(Test)).^2;

    MSE_value=sum(MSEmatrix(:))/(r*c);
end
end