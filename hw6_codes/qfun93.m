function [y,g] = qfun93(x)
y = 100*(x(2)-x(1)^2)^2+(1-x(1))^2+90*(x(4)-x(3)^2)^2 ...
    +(1-x(3))^2+10.1*((1-x(2))^2+(1-x(4))^2)+19.8*(x(2)-1)*(x(4)-1);
if nargout > 1
    g=[-400*x(1)*(x(2)-x(1)^2)-2*(1-x(1));
        200*(x(2)-x(1)^2)-20.2*(1-x(2))+19.8*(x(4)-1);
        -360*x(3)*(x(4)-x(3)^2)-2*(1-x(3));
        180*(x(4)-x(3)^2)-20.2*(1-x(4))+19.8*(x(2)-1)];
end