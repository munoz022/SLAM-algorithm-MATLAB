function z=fcolormap(pc,idxclusters)
%Function that gives me a colormap for the diffrent cluster indexes. idxclusters is
%the vector that associates each point to a cluster with it's respective
%index. The output is the pointcloud with the pc.Color category modified
%based on the clusters that each point is contained in
z=copy(pc);
colors=max(idxclusters);
colors=round(255*jet(colors));
for i=1:length(idxclusters)
    for j=1:length(colors)
        if idxclusters(i)==j
            z.Color(i,:)=colors(j,:);
        end
    end
end