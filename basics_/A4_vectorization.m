% Compute correlation of pair of columns in two matrices using vectorized
% and non-vectorized method.

A  = rand(100000,100);
B = 0.9*A+0.1*rand(100000,100);

%% Non vectorized
tic
C = zeros(size(A,1),1);
for ii = 1:length(C)
    norm_vec1 = (A(ii,:)-mean(A(ii,:))); % Zero mean row of A
    norm_vec1 = norm_vec1./(sqrt(sum(norm_vec1.^2))); % L2 normalize row of A
    norm_vec2 = (B(ii,:)-mean(B(ii,:))); % Zero mean row of B
    norm_vec2 = norm_vec2./(sqrt(sum(norm_vec2.^2))); % L2 normalize row of B
    C(ii) = norm_vec1*norm_vec2';
end
toc

%% Vectorized
% Before broadcasting arrays (2016b), bsxfun is useful.
tic
norm_vec1 = A-mean(A,2);
norm_vec2 = B-mean(B,2);
% L2 normalize each row
norm_vec1_ = norm_vec1./sqrt(sum(norm_vec1.^2,2));
norm_vec2_ = norm_vec2./sqrt(sum(norm_vec2.^2,2));
% Dot product
C2=sum(norm_vec1_.*norm_vec2_,2);
toc
