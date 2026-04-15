function val = DDIM(x,y,t)
    n = length(x);
    D = DDtable(x,y);

    val = D(1,1);
    prod = 1;

    for i = 2:n
        prod = prod * (t - x(i-1));
        val = val + D(1,i)*prod;
    end
end