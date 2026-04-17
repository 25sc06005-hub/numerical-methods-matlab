function D = Difftable(y)
    n = length(y);
    D = zeros(n, n);
    
    % Use (:) to force y into a column vector regardless of input shape
    D(:, 1) = y(:); 
    
    for j = 2:n
        % The number of differences decreases by 1 for each column
        for i = 1:n-j+1
            D(i, j) = D(i+1, j-1) - D(i, j-1);
        end
    end
end
