function z = corr_(x,y)
z = zeros(size(x,1),1);
for ii = 1:length(z)
    vec1 = x(ii,:);
    vec2 = y(ii,:);
    vec1 = vec1-mean(vec1);
    vec2 = vec2-mean(vec2);
    vec1 = vec1./sqrt(sum(vec1.^2));
    vec2 = vec2./sqrt(sum(vec2.^2));
    z(ii)=vec1*vec2';
end