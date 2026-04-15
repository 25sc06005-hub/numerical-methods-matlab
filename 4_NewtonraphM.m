function root = NewtonraphM(a,f,df,tol)
    x = a;
    while abs(f(x)) > tol
        x = x - f(x)/df(x);
    end
    root = x;
end