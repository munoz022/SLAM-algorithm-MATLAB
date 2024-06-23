%Lectura de la nube de puntos
function [x,y,z,w]=controlframe(persona)
%persona=pcread("poincloud_88.pcd");
pc=copy(persona);
xmin=-40;
xmax=40;
ymin=-30;
ymax=30;
zmin=-1;
zmax=10;
roi=[xmin, xmax, ymin, ymax, zmin, zmax];
indices=findPointsInROI(persona,roi);
pc = select(pc,indices);
%Filtrado por normales
matrix=pcnormals(pc);
n=length(matrix(:,1));
k=0;
for i=1:n
    if abs(matrix(i,3))<0.5
        k=k+1;
    end
end
indices=zeros(k,1);
k=1;
for i=1:n
    if abs(matrix(i,3))<0.5
        indices(k)=i;
        k=k+1;
    end
end
pc1=select(pc,indices);
%Algoritmo de clustering
minpoints=2;
eps=0.4;
points=pc1.Location;
% tic;
[idxclusters]=dbscan(points,eps,minpoints);
% toc;
indices=findexingnot(idxclusters,-1);%Funcion que me elimina los outliers
pc2=select(pc1,indices);
idxclusters=fselectcomponents(idxclusters,-1);%Funcion que actualiza el vector de idxclusters para que se correspondan con los nuevos indices
pc3=fcolormap(pc2,idxclusters);
pcprueba=copy(pc3);%Funcion que me genera el mapa de color en base al numero de clusters distintos
%A partir de aqui quiero ver los clusters por separado. Haría un bucle para
%recorrer todos los lusters y flitrarlos en base a si me intersan o no.
%Por ahora voy a trabajar uno a uno.
k=0;
%Bucle para recorrer los indices de todos los clusters y analizarlos por
%separado
for i=1:max(idxclusters)
    indices=findexing(idxclusters,i);
    pc4=select(pc3,indices);
    %Aqui introduzco el algoritmo que analiza el cluster por separado,
    %dando un "1" lógico si me interesa, y un "0" si no. 
    valido=fanalizecluster(pc4);
    if valido==0
        k=k+1;
        indices=findexingnot(idxclusters,i);
        idxclusters=fselectcomponents(idxclusters,i);
        pc3=select(pc3,indices);
    end
end
% pcshow(persona)
% figure
% pcshow(pc1)
% figure
% pcshow(pcprueba)
% figure
% pcshow(pc3)
x=pc3;
y=idxclusters;
z=pc;
w=pcprueba;