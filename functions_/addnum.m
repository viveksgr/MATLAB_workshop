function addnum(num1)
persistent num2
 
if isempty(num2)
    prompt = 'Number 2:  ';
    num2 = input(prompt, 's');
end

num1+str2double(num2)
