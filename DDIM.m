function val = DDIM(x, y, t)
    n = length(x);
    % 1. Construct the Divided Difference Table
    D = zeros(n, n);
    D(:, 1) = y(:); % First column is y values
    
    for j = 2:n
        for i = 1:n-j+1
            % Formula: [y_i...y_j] = (f[x_i+1...x_j] - f[x_i...x_j-1]) / (x_j - x_i)
            D(i, j) = (D(i+1, j-1) - D(i, j-1)) / (x(i+j-1) - x(i));
        end
    end

    % 2. Interpolation Logic (Newton Form)
    val = D(1, 1);
    prod_term = 1;

    for i = 2:n
        % Multiply by (t - x_1), then (t - x_2), etc.
        prod_term = prod_term * (t - x(i-1));
        % Add the next divided difference term: f[x1...xi] * product
        val = val + D(1, i) * prod_term;
    end
end
