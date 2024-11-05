%DFT 
%with buildin
x=[1,2,3,4]
disp('dft of x[n] is');
X_fft=fft(x);
disp(X_fft);
figure;
subplot(2,1,1);
stem(0:length(X_fft)-1,abs(X_fft));
xlabel('frequency');
ylabel('Magnitude');
title('DFT of x');
subplot(2,1,2);
stem(0:length(X_fft)-1,angle(X_fft),"filled");
xlabel('frequency');
ylabel('phase (rads)');
title('phase spectrum')

% without buildin
x=[1,2,3,4];
N=length(x);
X_fft=zeros(1,N);
for k=0:N-1
    for n=0:N-1
        X_fft(k+1)=X_fft(k+1)+x(n+1)*exp(-1i*2*pi*k*n/N);
    end
end
disp("DFT of x[n] is");
disp(abs(X_fft));
figure;
stem(abs(X_fft));
xlabel('Time scale');
ylabel('Magnitude');
title('DFT of x[n]');