function curve = subfunc2(x)
a = 3;
b = 5;
curve = makecurve(x);
    function curve = makecurve(x)
        curve = a*x.^2+b;
    end
end