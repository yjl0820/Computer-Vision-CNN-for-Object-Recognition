function outarray = apply_softmax(inarray)
    alpha = max(inarray(1,1,:))
    sumexp = sum(exp(double(inarray(1,1,:))-alpha))
    outarray = exp(inarray())
end

function output = apply_softmax(input)
	a = max(input(1,1,:));
	s = sum(exp(input(1,1,:)-a));
	output = exp(input(1,1,:)-a)/s;
end