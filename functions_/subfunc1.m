function curve = subfunc1(x)
a = 3;
b = 5;
curve = makecurve(x,a,b);
end
function curve = makecurve(x,a,b)
curve = a*x.^2+b;
end