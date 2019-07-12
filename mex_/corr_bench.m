x = rand(1e6,100);
y = rand(1e6,100);

tic
z = corr_(x,y);
toc

tic
z = corr_mex(x,y);
toc
