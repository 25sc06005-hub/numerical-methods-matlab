function val = NBDIM(x,y,t)
    n = length(x);
    h = x(2) - x(1);
    D = Difftable(y);
    p = (t - x(n))/h;

    val = y(n);
    fact = 1;
    pterm = 1;

    for i = 1:n-1
        pterm = pterm * (p + (i-1));
        fact = fact * i;
        val = val + (pterm * D(n-i,i+1))/fact;
    end
end