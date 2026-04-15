function root = SecantM(a,b,f,tol)
    while abs(b - a) > tol
        c = b - f(b)*(b - a)/(f(b) - f(a));
        a = b;
        b = c;
    end
    root = b;
end