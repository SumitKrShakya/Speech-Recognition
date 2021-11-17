%Speech Recognition Using Correlation Method
clc;
close all;
clear all;
Speech_Recognition = 'test2.wav'
voice = audioread(Speech_Recognition);
x = voice(:,1);
% % % % % x=x';
% % % % % x=x(1,:);
% % % % % x=x';

%Following is the code for the database of .wav file samples

%Test Sample  
yt=audioread('test.wav');
yt=yt(:,1);
% % % % % % yt=yt';
% % % % % % yt=yt(1,:);
% % % % % % yt=yt';
zt=xcorr(x,yt);
mt=max(zt);
lt=length(zt);
tt=-((lt-1)/2):1:((lt-1)/2);
tt=tt';
subplot(3,2,6);

% tttt = 0:1:length(yt)-1;
% plot(tttt,yt,'r');

plot(tt,zt,'r');
title(Speech_Recognition);

%First Sample  
y1=audioread('one.wav');
y1=y1(:,1);
% % % % % y1=y1';
% % % % % y1=y1(1,:);
% % % % % y1=y1';
z1=xcorr(x,y1);
m1=max(z1);
l1=length(z1);
t1=-((l1-1)/2):1:((l1-1)/2);
t1=t1';
subplot(3,2,1);
plot(t1,z1);
title('Sample-1');

%Second Sample  
y2=audioread('two.wav');
y2=y2(:,1);
% % % % % y2=y2';
% % % % % y2=y2(1,:);
% % % % % y2=y2';
z2=xcorr(x,y2);
m2=max(z2);
l2=length(z2);
t2=-((l2-1)/2):1:((l2-1)/2);
t2=t2';
subplot(3,2,2);

% 
% ttt2 = 0:1:length(y2)-1;
% plot(ttt2,y2,'g');

plot(t2,z2);
title('Sample-2');

%Third Sample  
y3=audioread('three.wav');
y3=y3(:,1);
% % % % % % y3=y3';
% % % % % % y3=y3(1,:);
% % % % % % y3=y3';
z3=xcorr(x,y3);
m3=max(z3);
l3=length(z3);
t3=-((l3-1)/2):1:((l3-1)/2);
t3=t3';
subplot(3,2,3);
plot(t3,z3);
title('Sample-3');

%Fourth Sample  
y4=audioread('four.wav');
y4=y4(:,1);
% % % % % % y4=y4';
% % % % % % y4=y4(1,:);
% % % % % % y4=y4';
z4=xcorr(x,y4);
m4=max(z4);
l4=length(z4);
t4=-((l4-1)/2):1:((l4-1)/2);
t4=t4';
subplot(3,2,4);
plot(t4,z4);
title('Sample-4');

%Fifth Sample  
y5=audioread('five.wav');
y5=y5(:,1);
% % % % % y5=y5';
% % % % % y5=y5(1,:);
% % % % % y5=y5';
z5=xcorr(x,y5);
m5=max(z5);
l5=length(z5);
t5=-((l5-1)/2):1:((l5-1)/2);
t5=t5';
subplot(3,2,5);
plot(t5,z5);
title('Sample-5');

m6=300;
a=[m1 m2 m3 m4 m5 m6];
m=max(a);

h=audioread('allow.wav');
if m<=m1
    soundsc(audioread('one.wav'),50000)
        soundsc(h,50000)
elseif m<=m2
    soundsc(audioread('two.wav'),50000)
        soundsc(h,50000)
elseif m<=m3
    soundsc(audioread('three.wav'),50000)
        soundsc(h,50000)
elseif m<=m4
    soundsc(audioread('four.wav'),50000)
        soundsc(h,50000)
elseif m<m5
    soundsc(audioread('five.wav'),50000)
        soundsc(h,50000)
else
   soundsc(audioread('denied.wav'),50000)
   
end
