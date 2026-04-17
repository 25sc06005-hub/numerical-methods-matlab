function val = NFDIM(x, y, t)
    n = length(x);
    h = x(2) - x(1);
    
    % 1. Construct the Forward Difference Table
    D = zeros(n, n);
    D(:, 1) = y(:);
    for j = 2:n
        for i = 1:n-j+1
            D(i, j) = D(i+1, j-1) - D(i, j-1);
        end
    end

    % 2. Interpolation Logic
    p = (t - x(1)) / h;
    val = D(1, 1); % This is y(1)
    pterm = 1;
    fact = 1;

    for i = 1:n-1
        pterm = pterm * (p - (i-1));
        fact = fact * i;
        val = val + (pterm * D(1, i+1)) / fact;
    end
end
