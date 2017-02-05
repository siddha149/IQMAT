function CD_value = CD (Ref,Test)

if(size(Ref)~=size(Test))
    error('The size of reference image and test image are not equal.');
    
else
    [r c]=size(Ref);
    
    Ref=double(Ref);
    Test=double(Test);
    A=zeros(r,c);
    for i=1:r
        for j=1:c
            A(i,j)=1-2*((min(Ref(i,j),Test(i,j)))/(Ref(i,j)+Test(i,j)));
        end
    end
    
    CD_value=sum(A(:))/(r*c);
end
end