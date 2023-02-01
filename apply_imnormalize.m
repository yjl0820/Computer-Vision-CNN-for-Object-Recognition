function outarray = apply_imnormalize(inarray)
    normalize1= double(inarray);
    outarray = (normalize1/255.0)-0.5;
end

%def apply_relu(inarray):
%    outarray = max(inarray,0)
%    return outarray


