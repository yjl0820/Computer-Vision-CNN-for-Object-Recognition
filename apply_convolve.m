function outarray = apply_convolve(inarray, filterbanks, biasvectors)
    N = size(inarray,1);
    M = size(inarray,2);
    %D = Channel 
    D1 = size(inarray,3);
    D2 = size(filterbanks,4);
    b = biasvectors

    outarray = zeros(N,M,D2);%output is an array of size N M D2
    for l = 1:D2
        result = double(zeros(N,M)); %compute a single NxM channel of the output image
        %b= d
        for k = 1:D1
            result = result + double(imfilter(inarray(:,:,k),filterbanks(:,:,k,l),'conv')); 
            %result(:,:) = result(:,:) + double(result(:,:));
        end
        outarray(:,:,l) = result + b(l); % Add bias value
    end
end

