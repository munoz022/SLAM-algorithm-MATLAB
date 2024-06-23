%Main program tu run through all the pointclouds sequentally
xlimits=[-50 50];
ylimits=[-50 50];
zlimits=[-5 20];    
player1=pcplayer(xlimits,ylimits,zlimits);
player2=pcplayer(xlimits,ylimits,zlimits);
player3=pcplayer(xlimits,ylimits,zlimits);
position=zeros(7490,2);
alfa_acumulado=0;
alfa=0;
j=0;
incremento=[0 0 0];
vel=0;
omega=0;
PERDIDAS=0;
perdidas=0;
vector_alfa=zeros(4270,1);
vector_incremento=zeros(4270,3);
figure(4)
hold on;
for i=2900:7490
     format="pointcloud_%d.pcd";
     filename=sprintf(format,i);
     persona=pcread(filename);
     [pointCloud,idxclusters,pcsinfiltros,pcclustered] = controlframe(persona);
     view(player1,pointCloud);
     view(player2,pcsinfiltros);
     view(player3,pcclustered);
%      pointCloud va a ser la nube de puntos de solo los clusters validos
%      idxclusters los indices correspondientes de cluster a cada punto
     if i==2900
         [farolas]=Positioning(pointCloud,idxclusters);
     else
         [position,farolas,alfa,incremento,perdidas]=Positioning_rel(positionprev,farolasprev,pointCloud,idxclusters,i,alfa_acumulado);
     end
     PERDIDAS=PERDIDAS+perdidas;
     %FUNCION COMPLEMENTARIA PARA CALCULAR LA DISPERSION DE LAS FAROLAS
     ref=farolas;
     coordselementosrefs=fdispersion(ref,position(j+1,:),alfa_acumulado);
     plot(coordselementosrefs(:,1),coordselementosrefs(:,2),'o','MarkerSize', 10, 'LineWidth', 2);
     %TERMINA FUNCION COMPLEMENTARIA PARA CALCULAR LA DISPERSION DE LAS
     %FAROLAS
     farolasprev=farolas;
     positionprev=position;
     alfa_acumulado=alfa;
     j=j+1;
     vector_alfa(j)=alfa_acumulado;
     vector_incremento(j,:)=incremento;
%      if length(vector_incremento(:,1))>1
%          [vel,omega]=fcalcvel(vector_incremento(j,:),vector_incremento(j-1,:));
%      end
end 
hold off;
figure
position_sinceros=position(any(position ~= 0, 2), :);
position_sin_Nans= position_sinceros(any(position_sinceros,2),:);
plot(position_sin_Nans(:,1),position_sin_Nans(:,2))
axis equal
