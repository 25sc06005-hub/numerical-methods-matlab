function val = NFDIM(x,y,t)
    n = length(x);
    h = x(2) - x(1);
    D = Difftable(y);
    p = (t - x(1))/h;

    val = y(1);
    fact = 1;
    pterm = 1;

    for i = 1:n-1
        pterm = pterm * (p - (i-1));
        fact = fact * i;
        val = val + (pterm * D(1,i+1))/fact;
    end
end