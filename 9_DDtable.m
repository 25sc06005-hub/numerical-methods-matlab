function D = DDtable(x,y)
    n = length(x);
    D = zeros(n,n);
    D(:,1) = y';

    for j = 2:n
        for i = 1:n-j+1
            D(i,j) = (D(i+1,j-1) - D(i,j-1)) / (x(i+j-1) - x(i));
        end
    end
end