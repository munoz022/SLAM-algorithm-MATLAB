function z=findexing(vec, val)
%Function that gives me indexes from valid points elimnating the outliers
%that I don't want. I'm interested in points with the value "val"
j=0;
for i=1:length(vec)
    if vec(i)==val
        j=j+1;
    end
end
z=zeros(j,1);
j=1;
for i=1:length(vec)
    if vec(i)==val
        z(j)=i;
        j=j+1;
    end
end