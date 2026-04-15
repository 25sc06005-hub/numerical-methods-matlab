function root = RegulafalsiM(a,b,f,tol)
    c = a;
    while abs(f(c)) > tol
        c = (a*f(b) - b*f(a)) / (f(b) - f(a));
        if f(a)*f(c) < 0
            b = c;
        else
            a = c;
        end
    end
    root = c;
end