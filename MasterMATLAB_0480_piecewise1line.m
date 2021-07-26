%%
%     COURSE: Master MATLAB through guided problem-solving
%    SECTION: Translate formulas into code
%      VIDEO: Piecewise function in one line of code
% Instructor: mikexcohen.com
%
%%

% time vector
t = -3:.01:3;

%% the multi-line method

% find cut points
tidx = [1 dsearchn(t',0) length(t)];

% piece 1
f(tidx(1):tidx(2)) = sin(t(tidx(1):tidx(2)));

% piece 2
f(tidx(2)+1:tidx(3)) = t(tidx(2)+1:tidx(3));

%% the one-liner method

f2 = (t<0).*sin(t) + (t>0).*t;

%% plot them both

figure(1), clf, hold on

plot(t,f, 'linew',2)
plot(t,f2,'o','linew',2)

xlabel('Time')
legend({'Multiline';'Uniline'})

%%
