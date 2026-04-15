function I = Simp38(a,b,f,n)
    h = (b - a)/n;
    sum1 = 0; sum2 = 0;

    for i = 1:n-1
        if mod(i,3) == 0
            sum2 = sum2 + f(a + i*h);
        else
            sum1 = sum1 + f(a + i*h);
        end
    end

    I = (3*h/8)*(f(a) + f(b) + 3*sum1 + 2*sum2);
end