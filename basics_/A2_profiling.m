% How to profile and time codes.
%% A simple function
var1 = 6;
var2 = -1;
check_numbers(var1,var2);

%% Tic-toc
tic
var3 = -6;
var4 = 1;
check_numbers(var3,var4);
toc
% Is this reliable?

%% Timeit
f = @()check_numbers(var3,var4);
timeit(f)

%% Profiler
profile on % Turn on profiler
var5 = -8;
var6 = -9;
check_numbers(var5,var6);
profile viewer % View profile

profile clear
profile('on', '-history') % Turn on profile history
var5 = -8;
var6 = -9;
check_numbers(var5,var6);

var7 = -5;
var8 = -2;
check_numbers(var7,var8);

var9 = 1;
var10 = 2;
check_numbers(var9,var10);

p = profile('info');
