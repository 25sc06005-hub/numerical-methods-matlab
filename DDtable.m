function D = DDtable(x, y)
    n = length(x);
    D = zeros(n, n);
    
    % Column 1: Zeroth divided differences (y values)
    D(:, 1) = y(:); 
    
    % Loop to calculate higher order divided differences
    for j = 2:n
        for i = 1:n-j+1
            % Formula: f[xi...xj] = (f[xi+1...xj] - f[xi...xj-1]) / (xj - xi)
            % denominator x(i+j-1) - x(i) ensures we divide by the correct interval
            D(i, j) = (D(i+1, j-1) - D(i, j-1)) / (x(i+j-1) - x(i));
        end
    end
end
