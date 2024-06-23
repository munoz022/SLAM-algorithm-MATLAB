function [position,farolas,alfa,incremento,perdidas]=Positioning_rel(positionprev,farolasprev,pc,idxclusters,frame,alfa_acumulado)
position=positionprev;
farolas=zeros(20,2);
clusters=unique(idxclusters);
perdidas=0;
coords_planas=[pc.Location(:,1) pc.Location(:,2),idxclusters];
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
farolas=farolas(any(farolas ~= 0, 2), :);
farolasprev=farolasprev(any(farolasprev ~= 0, 2), :);
ref=zeros(20,4);
k=1;
for i=1:length(farolasprev(:,1))
    for j=1:length(farolas(:,1))
        distance1=farolasprev(i,1)-farolas(j,1);
        distance2=farolasprev(i,2)-farolas(j,2);
        if abs(distance1)<=1.5&&abs(distance2)<=1
            ref(k,:)=[farolasprev(i,:) farolas(j,:)];
            k=k+1;
        end
    end
end
ref=ref(any(ref ~= 0, 2), :);
length(ref(:,1));
if length(ref(:,1))>1
    incremento=sol(ref);
    alfa_acumulado=alfa_acumulado+incremento(3);
    desp=sqrt(incremento(1)^2+incremento(2)^2);
    position(frame,:)=position(frame-1,:)+[desp*cos(alfa_acumulado) desp*sin(alfa_acumulado)];
    alfa=alfa_acumulado;
else 
    position(frame,:)=position(frame-1,:);
    alfa=alfa_acumulado;
    incremento=[0 0 0];
    perdidas=1;
end
position(frame,:);