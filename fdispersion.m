function [z]=fdispersion(ref,position,alfa_acumulado)
r1=position;
r3=zeros(length(ref(:,1)),2);
for i=1:length(ref(:,1))
    r2=zeros(1,2);
    r2(1)=ref(i,1)*cos(alfa_acumulado)-ref(i,2)*sin(alfa_acumulado);
    r2(2)=ref(i,1)*sin(alfa_acumulado)+ref(i,2)*cos(alfa_acumulado);
    r3(i,:)=r1+r2;
end
z=r3;