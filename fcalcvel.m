function [v,omega]=fcalcvel(pos2,pos1)
v=(pos2(1)-pos1(1))/0.1;
omega=(pos2(3)-pos1(3))/0.1;
end