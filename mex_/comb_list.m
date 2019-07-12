function y = comb_list(x)
for ii = 2:length(x)
    z(ii) = x(ii-1)+x(ii);
end
y = z;
