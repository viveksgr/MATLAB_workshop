function check_numbers(a,b)
a_ = inputname(1);
b_ = inputname(2);
c = addition(a,b);
if (c ~= (abs(a)+abs(b)))
    fprintf('Either %s or %s is negative\n',a_,b_);
else
    fprintf('Both numbers are positive\n')
end
end

function c = addition(a,b)
pause(1)
c = a+b;
end