function IF_value = IF(Ref,Test)

if(size(Ref)~=size(Test))
    error('The size of reference image and test image are not equal.');
else
    A=(double(Ref)-double(Test)).^2;

    B=(double(Ref)).^2;

    IF_value= 1-(sum(A(:))/sum(B(:)));
end
end