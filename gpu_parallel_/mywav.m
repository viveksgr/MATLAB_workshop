parfor i = 1:1024
  A(i) = sin(i*2*pi/1024);
end

%%
parpool('local',4)  % Create pool
A = magic(4);       % Create magic 4-by-4 matrix
B = distributed(A); % Distribute to the workers
B                   % View results in client.
whos                % B is a distributed array here.
delete(gcp)         % Stop pool