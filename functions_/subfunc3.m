function fh = subfunc3(a,b)
% A function to "export" custom functions
fh = @makecurve;
    function curve = makecurve(x)
        a = a+1;
        curve = a*x.^2+b;
    end
end