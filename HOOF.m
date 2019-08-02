function output = HOOF(U,V,binSize)

x_siz=size(U,1);
y_siz=size(U,2);
result=zeros(x_siz,y_siz);
for i=1:x_siz
    for j=1:y_siz
        if (U(i,j)==0 && V(i,j)==0)
            result(i,j)=0;
        elseif(U(i,j)<=0 && V(i,j)<=0)
            result(i,j)=rad2deg(atan(V(i,j)/U(i,j)));
            result(i,j)=result(i,j)+360;
        elseif(U(i,j)<=0 && V(i,j)>=0)
            result(i,j)=rad2deg(atan(V(i,j)/U(i,j)));
            result(i,j)=result(i,j)+180;
        elseif(U(i,j)>=0 && V(i,j)>=0)
            result(i,j)=rad2deg(atan(V(i,j)/U(i,j)));
        end
            
    end
end

period=360/binSize;
bins=zeros(1,binSize);
output=zeros(1,binSize);
for i=1:binSize
    if i==1
        bins(i)= period;
    else
        bins(i)=bins(i-1)+period;
    end
end

for i=1:x_siz
    for j=1:y_siz
        for k=1:binSize
            if k==1
                if result(i,j)>=0 && result(i,j)<bins(1)
                    output(1)=output(1)+1;
                    break;
                end
            else
                if result(i,j)>=bins(k-1) && result(i,j)<bins(k)
                    output(k)=output(k)+1;
                    break;
                end
            end
        end
    end
end

end
