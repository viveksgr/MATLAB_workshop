x = rand(1000,1); % Create vector
ind_mat = (1:length(x))'; % Vector of indices
x_diff = abs(x(2:end)-x(1:end-1)); % Or just use the diff function for difference
x_id = x_diff>0.5; % indices of x_diff with vals > 0.5
y_ = ind_mat([x_id; false])+x([false; x_id]); % Using diff changes indices by 1
