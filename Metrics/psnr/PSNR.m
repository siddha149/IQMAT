function PSNR_value = PSNR(Ref,Test)

if(size(Ref)~=size(Test))
    error('The size of the 2 images are unequal')

elseif(Ref==Test)
    display('Since both reference image and test image are identical PSNR value is infinity');
    PSNR_value=Inf;
    return;
else
    maxValue=double(max(Ref(:)));
    [r c]=size(Ref);

    MSEmatrix=(double(Ref)-double(Test)).^2;

    mse=sum(MSEmatrix(:))/(r*c);

    PSNR_value=10*log10(maxValue^2/mse);
end
end



    
