function [a_val,b_val,c_val,d_val] = get_a_b_c_d_modified(A,r,c)

a_val=0;
b_val=0;
c_val=0;
d_val=0;

for i=1:r
    for j=1:c
        if(i-1==0)
            if(A(i,j)==1)
                c_val = c_val + 1;
            else
                a_val = a_val + 1;
            end
        else
            if( A(i,j) ==0 && A(i-1,j)==0)
                a_val = a_val + 1;
            elseif (A(i,j)== 0 && A(i-1,j) == 1)
                b_val = b_val + 1;
            elseif (A(i,j)== 1 && A(i-1,j) == 0)
                c_val = c_val + 1;
            else
                d_val = d_val + 1;
            end
        end
        
        if(j-1 == 0)
            if(A(i,j)==1)
                c_val = c_val + 1;
            else
                a_val = a_val + 1;
            end
        else
            if( A(i,j) ==0 && A(i,j-1)==0)
                a_val = a_val + 1;
            elseif (A(i,j)== 0 && A(i,j-1) == 1)
                b_val = b_val + 1;
            elseif (A(i,j)== 1 && A(i,j-1) == 0)
                c_val = c_val + 1;
            else
                d_val = d_val + 1;
            end
        end
            
        if(i+1==r+1)
            if(A(i,j)==1)
                c_val = c_val + 1;
            else
                a_val = a_val + 1;
            end
        else
            if( A(i,j) ==0 && A(i+1,j)==0)
                a_val = a_val + 1;
            elseif (A(i,j)== 0 && A(i+1,j) == 1)
                b_val = b_val + 1;
            elseif (A(i,j)== 1 && A(i+1,j) == 0)
                c_val = c_val + 1;
            else
                d_val = d_val + 1;
            end
        end    
        
        if(j+1==c+1)
            if(A(i,j)==1)
                c_val = c_val + 1;
            else
                a_val = a_val + 1;
            end
        else
            if( A(i,j) ==0 && A(i,j+1)==0)
                a_val = a_val + 1;
            elseif (A(i,j)== 0 && A(i,j+1) == 1)
                b_val = b_val + 1;
            elseif (A(i,j)== 1 && A(i,j+1) == 0)
                c_val = c_val + 1;
            else
                d_val = d_val + 1;
            end
        end     

    end
end

a_val=a_val/(r*c);
b_val=b_val/(r*c);
c_val=c_val/(r*c);
d_val=d_val/(r*c);

end