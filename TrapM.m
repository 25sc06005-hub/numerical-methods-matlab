function I = TrapM(a,b,f,n)
    h = (b - a)/n;
    sum = 0;

    for i = 1:n-1
        sum = sum + f(a + i*h);
    end

    I = (h/2)*(f(a) + f(b) + 2*sum);
end