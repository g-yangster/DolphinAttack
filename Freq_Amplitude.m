tiledlayout(2,2)
%fill in the path of normal audio file.
voice_file = 'C:/Users/m227218/Documents/MATLAB/Capstone/orig.wav';

[y, Fs] = audioread(voice_file);
L = size(y,1);
Fn = Fs/2;
FTy = fft(y)/L;
Fv = linspace(0, 1, fix(L/2)+1)*Fn;
Iv = 1:numel(Fv);
amp=fftshift(fft(y,L))/L;

nexttile
plot(Fv, abs(FTy(Iv,:))*2)
%plot((-(L/2-1):((L/2)))*((Fs)/L),abs(amp)*2)
grid
xlabel('Frequency')
ylabel('Amplitude')
title('Original-Research Voice');
axis([0 5000 0 0.007]);

%fill in the path of normal audio file.
voice_file = 'C:/Users/m227218/Documents/MATLAB/Capstone/ulorig.wav';

[y2, Fs2] = audioread(voice_file);
L2 = size(y2,1);
Fn2 = Fs2/2;
FTy2 = fft(y2)/L2;
Fv2 = linspace(0, 1, fix(L2/2)+1)*Fn2;
Iv2 = 1:numel(Fv2);
amp2=fftshift(fft(y2,L2))/L2;

nexttile
plot(Fv2, abs(FTy2(Iv2,:))*2)
%plot((-(L2/2-1):((L2/2)))*((Fs2)/L2),abs(amp2)*2)
grid
xlabel('Frequency')
ylabel('Amplitude')
title('New-Research Voice');
axis([25000 35000 0 0.002]);

voice_file = 'C:/Users/m227218/Documents/MATLAB/Capstone/DavidFile.m4a';

[y2, Fs2] = audioread(voice_file);
L2 = size(y2,1);
Fn2 = Fs2/2;
FTy2 = fft(y2)/L2;
Fv2 = linspace(0, 1, fix(L2/2)+1)*Fn2;
Iv2 = 1:numel(Fv2);

nexttile
plot(Fv2, abs(FTy2(Iv2,:))*2)
grid
xlabel('Frequency')
ylabel('Amplitude')
title('Original-Capstone Voice');
axis([0 9000 0 0.009]);


%fill in the path of normal audio file.
voice_file = 'C:/Users/m227218/Documents/MATLAB/Capstone/newaudio.wav';

[y2, Fs2] = audioread(voice_file);
L2 = size(y2,1);
Fn2 = Fs2/2;
FTy2 = fft(y2)/L2;
Fv2 = linspace(0, 1, fix(L2/2)+1)*Fn2;
Iv2 = 1:numel(Fv2);

nexttile
plot(Fv2, abs(FTy2(Iv2,:))*2)
grid
xlabel('Frequency')
ylabel('Amplitude')
title('New-Capstone Voice');
axis([25000 36000 0 0.005]);