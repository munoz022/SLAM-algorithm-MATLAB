function z=fanalizecluster(pc)
%With this function I gotta determine wether this cluster is a valid one or
%not. Return a "0" if it isn't and a "1" if it is. The filter is going to
%be based on dimensions, and maybe on density. 

%Primer filtro van a ser las dimensiones en z
max_z=max(pc.Location(:,3));
min_z=min(pc.Location(:,3));
max_y=max(pc.Location(:,2));
min_y=min(pc.Location(:,2));
max_x=max(pc.Location(:,1));
min_x=min(pc.Location(:,1));
deltax=max_x-min_x;
deltay=max_y-min_y;
% if max_z-min_z<1.5
%     z=0;
% elseif max_y-min_y>1.5
%         z=0;
% elseif max_x-min_x>1.5
%         z=0;
% else
%     z=1;
% end
z=0;
if deltax < 1.5 && deltay < 1.5
    corte=0.1;
    kprev=0.1;
    z=0;
    flag=0;
    for i=0:30
        k=kprev+corte;
        roi=[-Inf,Inf,-Inf,Inf,kprev,k];
        indices=findPointsInROI(pc,roi);
        pccorte=select(pc,indices);
        max_y=max(pccorte.Location(:,2));
        min_y=min(pccorte.Location(:,2));
        max_x=max(pccorte.Location(:,1));
        min_x=min(pccorte.Location(:,1));
        if max_x-min_x<0.2
            if max_y-min_y<0.2
                flag=flag+1;
            end
        end
        kprev=k;
    end
    if flag>=5&&max_z-min_z>=2
        z=1;
    end
end

