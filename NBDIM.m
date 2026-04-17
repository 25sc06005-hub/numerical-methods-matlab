function val = NBDIM(x, y, t)
    n = length(x);
    h = x(2) - x(1);

    % 1. Construct the Backward Difference Table
    % D(i, j) represents the j-th order difference at index i
    D = zeros(n, n);
    D(:, 1) = y(:); 
    for j = 2:n
        for i = n:-1:j
            D(i, j) = D(i, j-1) - D(i-1, j-1);
        end
    end

    % 2. Interpolation Logic
    % Use the bottom row of the table (D(n, :)) for backward interpolation
    p = (t - x(n)) / h;
    val = D(n, 1); % Initial value y_n
    p_product = 1;
    factorial_val = 1;

    for i = 1:n-1
        p_product = p_product * (p + (i - 1));
        factorial_val = factorial_val * i;
        val = val + (p_product * D(n, i+1)) / factorial_val;
    end
end
