function NSMD_value = NSMD (Ref,Test)

if(size(Ref)~=size(Test))
    error('The size of reference image and test image are not equal.');
    
else
    [r c]=size(Ref);
    
    Ref=double(Ref);
    A=fft2(Ref);
    RefAmp=abs(double(A));
    
    Test=double(Test);
    B=fft2(Test);
    TestAmp=abs(double(B));

    MeanAmp=(double(RefAmp)-double(TestAmp)).^2;

    NSMD_value=sum(MeanAmp(:))/(r*c);
    
end
end