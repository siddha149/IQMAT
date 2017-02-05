function NHS_value = NHS (Ref,Test)

if(size(Ref)~=size(Test))
    error('The size of reference image and test image are not equal.');
    
else
    [r c]=size(Ref);

    DataPoints=zeros(256,1);

    for i=0:1:255
        DataPoints(i+1,1)=i;
    end

    RefUn=zeros(256,1);

    for i=1:1:256
        RefUn(i,1)=sum(Ref(:)==DataPoints(i,1));
    end

    TestUn=zeros(256,1);

    for i=1:1:256
        TestUn(i,1)=sum(Test(:)==DataPoints(i,1));
    end

    A=abs(double(RefUn)-double(TestUn));

    NHS_value=sum(A(:))/(r*c);
end
end