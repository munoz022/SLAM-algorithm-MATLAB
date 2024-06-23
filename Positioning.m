function [farolas]=Positioning(pc,idxclusters)
farolas=zeros(20,2);
clusters=unique(idxclusters);
coords_planas=[pc.Location(:,1) pc.Location(:,2),idxclusters];
% scatter(coords_planas(:,1),coords_planas(:,2))
% hold on
for i=1:length(clusters)
    val=clusters(i);
    xval=0;
    yval=0;
    num=0;
    for j=1:length(coords_planas)
        if coords_planas(j,3)==val
            xval=xval+coords_planas(j,1);
            yval=yval+coords_planas(j,2);
            num=num+1;
        end
    end
    xval=xval/num;
    yval=yval/num;
    farolas(i,:)=[xval yval];
end
% scatter(farolas(:,1),farolas(:,2))
% hold off