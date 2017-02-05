function MAD_value = MAD (Ref,Test)

if(size(Ref)~=size(Test))
    error('The size of reference image and test image are not equal.');
    
elseif(Ref==Test)
    MAD_value=1;
    return;
else
    [r c]=size(Ref);
    Ref=double(Ref);
    Test=double(Test);
    
    RefTest=Ref.*Test;
   
    RefSq= sqrt((Ref.*Ref).^2);
    
    TestSq= sqrt ((Test.*Test).^2);
    
     for i =1:r
        for j = 1:c
            if(RefTest(i,j)==0)
                RefTest(i,j)=1;
            end
        end
    end
    
    for i =1:r
        for j = 1:c
            if(RefSq(i,j)==0)
                RefSq(i,j)=1;
            end
        end
    end
    
    for i =1:r
        for j = 1:c
            if(TestSq(i,j)==0)
                TestSq(i,j)=1;
            end
        end
    end
    
    C=(2/pi)*(acos(RefTest./(RefSq.*TestSq)));
    MAD_value=1-(sum(C(:))/(r*c));
end
end