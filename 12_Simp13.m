function I = Simp13(a,b,f,n)
    h = (b - a)/n;
    sum1 = 0; sum2 = 0;

    for i = 1:2:n-1
        sum1 = sum1 + f(a + i*h);
    end
    for i = 2:2:n-2
        sum2 = sum2 + f(a + i*h);
    end

    I = (h/3)*(f(a) + f(b) + 4*sum1 + 2*sum2);
end