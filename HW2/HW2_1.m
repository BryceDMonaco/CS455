%Constants
e = 0.1; %Epsilon of Sigma Norm

%Qi and Qj for the first pair of vectors
a1 = [3 5];
a2 = [7 5];

%Qi and Qj for the second pair of vectors
b1 = [2 8];
b2 = [4 5];

%i,j are the sigma norms of their respective vectors
i = snorm (a2 - a1, e)
j = snorm (b2 - b1, e)

%k,l are the euclidean norms of their respective vectors
k = norm (a2 - a1)
l = norm (b2 - b1)

function s = snorm(x, e)
s = (1/e) * (sqrt(1 + (e * (norm (x))^2)) - 1);
end