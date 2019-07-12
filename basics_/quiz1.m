% Take a random vector. Find the difference between consecutive terms. 
% If the abs(difference) is larger than 0.5, sum the index of the first number
% with the value of the second.

% Code for this is provided below. Vectorize it. Do not use any loop or
% @arrayfun

% Create random vector
x = rand(1000,1);
y = []; % Required output
jj = 1; % Index for the output vector
for ii = 2:length(x)
    if (abs(x(ii)-x(ii-1))>0.5)
        y(jj)=(ii-1)+x(ii);
        jj = jj +1;
    end
end
