function MD_value = MD(Ref,Test)

if(size(Ref)~=size(Test))
    error('The size of reference image and test image are not equal.');
else
    A=abs(double(Ref)-double(Test));
    MD_value= double(max(A(:)));
end
end