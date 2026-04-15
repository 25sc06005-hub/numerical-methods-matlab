function val = LagrangeM(x,y,t)
    n = length(x);
    val = 0;

    for i = 1:n
        L = 1;
        for j = 1:n
            if i ~= j
                L = L * (t - x(j)) / (x(i) - x(j));
            end
        end
        val = val + y(i)*L;
    end
end