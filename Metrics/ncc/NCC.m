function NCC_value = NCC(Ref,Test)

if(size(Ref)~=size(Test))
    error('The size of reference image and test image are not equal.');
    
else
    A=double(Ref).*double(Test);
    B=double(Ref).^2;
    
    NCC_value = sum(A(:))/sum(B(:));
    
end
end