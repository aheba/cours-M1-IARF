function [lags,C]=auto_corr_win(S,fs)

figure();

subplot(2,1,1);






t=(0:length(S)-1)/fs;

plot(t,S);

xlabel('Temps(en sec)');

ylabel('Amplitude');

legend('Signal');

[C,lags]=xcorr(S);

subplot(2,1,2);



lags=lags./fs;

plot(lags(640:(end-640)),C(640:(end-640)));


xlabel('Lag(en sec)');

ylabel('correlation coeff');

legend('Autocorr');
