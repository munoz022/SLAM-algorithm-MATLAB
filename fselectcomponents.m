function z=fselectcomponents(vector,value)
%Function that eliminates the components with acertain value and keeps the
%rest and their order
j=0;
for i=1:length(vector)
    if vector(i)~=value
        j=j+1;
    end
end
z=zeros(j,1);
j=1;
for i=1:length(vector)
    if vector(i)~=value
        z(j)=vector(i);
        j=j+1;
    end
end