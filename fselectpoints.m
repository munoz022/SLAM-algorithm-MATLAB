function z=fselectpoints(pc,idxin)
%Fuction to select points from a pointcloud based on a logical array that
%determines wether I want to keep the point "1" or not "0". Returns a
%pointcloud with the filtered points
j=0;
for i=1:length(idxin)
    if idxin(i)==1
        j=j+1;
    end
end
indices=zeros(j,1);
j=1;
for i=1:length(idxin)
     if idxin(i)==1
        indices(j)=i;
        j=j+1;
    end
end
z=select(pc,indices);

