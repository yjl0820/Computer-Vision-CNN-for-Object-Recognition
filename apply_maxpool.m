function outarray = apply_maxpool(inarray)
    % n, m, d array define the size of 3D matrix
    N = size(inarray, 1);
    M = size(inarray, 2);
    D = size(inarray, 3);
    
    % shrink M
    % initialize output as zeros in array
    % M/2
    output = zeros(N, M/2);
    for k = 1:D
        for i =1:N
            for j = 1:M/2
                output(i,j,k) = max(inarray(i,2*j-1,k), inarray(i,2*j,k));
            end
        end
    end

    % shrink M and N
    outarray = zeros(N/2,M/2);
    for k = 1:D
        for j = 1:M/2
            for i = 1:N/2
                outarray(i,j,k) = max(output(2*i-1,j,k),output(2*i,j,k));
            end
        end
    end
end