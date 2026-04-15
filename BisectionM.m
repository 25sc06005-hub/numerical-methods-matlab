function root = BisectionM(a,b,f,tol)
    while (b - a)/2 > tol
        c = (a + b)/2;
        if f(c) == 0
            root = c;
            return;
        elseif f(a)*f(c) < 0
            b = c;
        else
            a = c;
        end
    end
    root = (a + b)/2;
end