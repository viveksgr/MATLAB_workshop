%% FFT Analysis (CPU vs GPU)
%---- Small data: CPU
% Create noisy sine waves
tic
theta = linspace(0,2*pi,8*65536);
y = sin(theta)+0.2*sin(10*theta)+0.3*(rand(size(theta))-0.5);
% Compute fft
fft_y = fft(y);
% Compute power 
psd = 2*abs(fft_y(1:end/2)/length(fft_y));
toc

% Small data GPU
tic
gy = gpuArray(y);
gfft_y = fft(gy);
fft_y = gather(gfft_y);
toc
