% Codes with preallocated memory are faster
% No preallocation
tic
x = 0;
for k = 2:1000000
   x(k) = x(k-1) + 5;
end
toc

% With preallocation
tic
x = zeros(1, 1000000);
for k = 2:1000000
   x(k) = x(k-1) + 5;
end
toc