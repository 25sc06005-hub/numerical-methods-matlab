function val = LagrangeM(x, y, t)
    n = length(x);
    val = 0;
    for i = 1:n
        % Select all indices except the current i
        idx = [1:i-1, i+1:n];
        
        % Calculate L_i(t) using element-wise operations
        L = prod((t - x(idx)) ./ (x(i) - x(idx)));
        
        val = val + y(i) * L;
    end
end
