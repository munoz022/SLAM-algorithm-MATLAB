function f=paramfun(x,ref)

if length(ref(:,1))<3
    f = [ref(1,1)-cos(x(3))*ref(1,3)+sin(x(3))*ref(1,4)-x(1)
        ref(1,2)-sin(x(3))*ref(1,3)-cos(x(3))*ref(1,4)-x(2)
        ref(2,1)-cos(x(3))*ref(2,3)+sin(x(3))*ref(2,4)-x(1)
        ref(2,2)-sin(x(3))*ref(2,3)-cos(x(3))*ref(2,4)-x(2)];

elseif length(ref(:,1))<4
    f = [ref(1,1)-cos(x(3))*ref(1,3)+sin(x(3))*ref(1,4)-x(1)
        ref(1,2)-sin(x(3))*ref(1,3)-cos(x(3))*ref(1,4)-x(2)
        ref(2,1)-cos(x(3))*ref(2,3)+sin(x(3))*ref(2,4)-x(1)
        ref(2,2)-sin(x(3))*ref(2,3)-cos(x(3))*ref(2,4)-x(2)
        ref(3,1)-cos(x(3))*ref(3,3)+sin(x(3))*ref(3,4)-x(1)
        ref(3,2)-sin(x(3))*ref(3,3)-cos(x(3))*ref(3,4)-x(2)];

elseif length(ref(:,1))<5
    f = [ref(1,1)-cos(x(3))*ref(1,3)+sin(x(3))*ref(1,4)-x(1)
        ref(1,2)-sin(x(3))*ref(1,3)-cos(x(3))*ref(1,4)-x(2)
        ref(2,1)-cos(x(3))*ref(2,3)+sin(x(3))*ref(2,4)-x(1)
        ref(2,2)-sin(x(3))*ref(2,3)-cos(x(3))*ref(2,4)-x(2)
        ref(3,1)-cos(x(3))*ref(3,3)+sin(x(3))*ref(3,4)-x(1)
        ref(3,2)-sin(x(3))*ref(3,3)-cos(x(3))*ref(3,4)-x(2)
        ref(4,1)-cos(x(3))*ref(4,3)+sin(x(3))*ref(4,4)-x(1)
        ref(4,2)-sin(x(3))*ref(4,3)-cos(x(3))*ref(4,4)-x(2)];

elseif length(ref(:,1))<6
    f = [ref(1,1)-cos(x(3))*ref(1,3)+sin(x(3))*ref(1,4)-x(1)
        ref(1,2)-sin(x(3))*ref(1,3)-cos(x(3))*ref(1,4)-x(2)
        ref(2,1)-cos(x(3))*ref(2,3)+sin(x(3))*ref(2,4)-x(1)
        ref(2,2)-sin(x(3))*ref(2,3)-cos(x(3))*ref(2,4)-x(2)
        ref(3,1)-cos(x(3))*ref(3,3)+sin(x(3))*ref(3,4)-x(1)
        ref(3,2)-sin(x(3))*ref(3,3)-cos(x(3))*ref(3,4)-x(2)
        ref(4,1)-cos(x(3))*ref(4,3)+sin(x(3))*ref(4,4)-x(1)
        ref(4,2)-sin(x(3))*ref(4,3)-cos(x(3))*ref(4,4)-x(2)
        ref(5,1)-cos(x(3))*ref(5,3)+sin(x(3))*ref(5,4)-x(1)
        ref(5,2)-sin(x(3))*ref(5,3)-cos(x(3))*ref(5,4)-x(2)];

elseif length(ref(:,1))<7
    f = [ref(1,1)-cos(x(3))*ref(1,3)+sin(x(3))*ref(1,4)-x(1)
        ref(1,2)-sin(x(3))*ref(1,3)-cos(x(3))*ref(1,4)-x(2)
        ref(2,1)-cos(x(3))*ref(2,3)+sin(x(3))*ref(2,4)-x(1)
        ref(2,2)-sin(x(3))*ref(2,3)-cos(x(3))*ref(2,4)-x(2)
        ref(3,1)-cos(x(3))*ref(3,3)+sin(x(3))*ref(3,4)-x(1)
        ref(3,2)-sin(x(3))*ref(3,3)-cos(x(3))*ref(3,4)-x(2)
        ref(4,1)-cos(x(3))*ref(4,3)+sin(x(3))*ref(4,4)-x(1)
        ref(4,2)-sin(x(3))*ref(4,3)-cos(x(3))*ref(4,4)-x(2)
        ref(5,1)-cos(x(3))*ref(5,3)+sin(x(3))*ref(5,4)-x(1)
        ref(5,2)-sin(x(3))*ref(5,3)-cos(x(3))*ref(5,4)-x(2)
        ref(6,1)-cos(x(3))*ref(6,3)+sin(x(3))*ref(6,4)-x(1)
        ref(6,2)-sin(x(3))*ref(6,3)-cos(x(3))*ref(6,4)-x(2)];

else 
    f = [ref(1,1)-cos(x(3))*ref(1,3)+sin(x(3))*ref(1,4)-x(1)
        ref(1,2)-sin(x(3))*ref(1,3)-cos(x(3))*ref(1,4)-x(2)
        ref(2,1)-cos(x(3))*ref(2,3)+sin(x(3))*ref(2,4)-x(1)
        ref(2,2)-sin(x(3))*ref(2,3)-cos(x(3))*ref(2,4)-x(2)
        ref(3,1)-cos(x(3))*ref(3,3)+sin(x(3))*ref(3,4)-x(1)
        ref(3,2)-sin(x(3))*ref(3,3)-cos(x(3))*ref(3,4)-x(2)
        ref(4,1)-cos(x(3))*ref(4,3)+sin(x(3))*ref(4,4)-x(1)
        ref(4,2)-sin(x(3))*ref(4,3)-cos(x(3))*ref(4,4)-x(2)
        ref(5,1)-cos(x(3))*ref(5,3)+sin(x(3))*ref(5,4)-x(1)
        ref(5,2)-sin(x(3))*ref(5,3)-cos(x(3))*ref(5,4)-x(2)
        ref(6,1)-cos(x(3))*ref(6,3)+sin(x(3))*ref(6,4)-x(1)
        ref(6,2)-sin(x(3))*ref(6,3)-cos(x(3))*ref(6,4)-x(2)
        ref(7,1)-cos(x(3))*ref(7,3)+sin(x(3))*ref(7,4)-x(1)
        ref(7,2)-sin(x(3))*ref(7,3)-cos(x(3))*ref(7,4)-x(2)];
    
end
end