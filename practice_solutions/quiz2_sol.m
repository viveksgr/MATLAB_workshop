mystr = 'silence of the lambs';
fh = @(x) mystr(~(mystr=='m'));
fh(mystr)

% Silence of the labs - when you're working alone on a weekend night and
% the computer screen shows the reflection of your empty tired soul.

% Also. There is an easy MATLAB function for everything.
mystr = "silence of the lambs";
fh = @(x) erase(mystr,"m");
fh(mystr)