function NSPD_value = NSPD (Ref,Test)

if(size(Ref)~=size(Test))
    error('The size of reference image and test image are not equal.');
    
else
    [r c]=size(Ref);
    
    Ref=double(Ref);
    A=fft2(Ref);
    RefPhase=unwrap(angle(double(A)));

    Test=double(Test);
    B=fft2(Test);
    TestPhase=unwrap(angle(double(B)));

    MeanPhase=(double(RefPhase)-double(TestPhase)).^2;

    NSPD_value=sum(MeanPhase(:))/(r*c);
    
end
end