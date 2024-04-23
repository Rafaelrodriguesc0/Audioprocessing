tempo = 0.3;

Fs =22050;
musica =0;
[original,Fs]=audioread('u2.wav');

si3 = 246.94/440;
% 4 
do4 = 261.63/440; do4_sustenido  = 277.18/440; 
re4 = 293.66/440; re_sustenido  = 311.13/440; 
mi4 = 329.63/440;
fa4 = 349.23/440; fa4_sustenido  = 369.99/440;
sol4 = 392.00/440;sol4_sustenido = 415.30/440;
la4 = 440.00/440; las4_sustenido  = 466.16/440;
si4 = 493.88/440; si4_bemol      = 466.16/440;
%5 
do5 = 523.25/440; do5_sustenido  = 554.37/440; 
re5 = 587.33/440; r5_sustenido   = 622.25/440; 
mi5 = 659.25/440;
fa5 = 698.46/440; fa5_sustenido  = 739.99/440;
sol5 = 783.99/440;sol5_sustenido = 830.61/440;
la5 = 880.00/440; las5_sustenido  = 932.33/440;
si5 = 987.77/440; si5_bemol      = 932.33/440;
%6 
do6 = 1046.50/440; do6_sustenido  = 1108.73/440; 
re6 = 1174.66/440; r6_sustenido  = 1244.51/440; 
mi6 = 1318.51/440;
fa6 = 1396.91/440; fa6_sustenido  = 1479.98/440;
sol6 = 1567.98/440;sol6_sustenido = 1661.22/440;
la6 = 1760.00/440; las6_sustenido  = 1864.66/440;
si6 = 1975.53/440; si6_bemol      = 1864.66/440;

seminima     = 0.5; 
minima       = 2    * seminima;
colcheia     = 1/2  * seminima;
semicolcheia = 1/4  * seminima;

pauta = [1 seminima+colcheia si6 1 minima+colcheia la6 1 seminima+colcheia 0 1 seminima mi6 1 colcheia fa6_sustenido 1 colcheia mi6 1 colcheia fa6_sustenido 1 seminima+colcheia si6 1 minima+colcheia la6 1 seminima+colcheia 0 1 seminima mi6 1 colcheia fa6_sustenido  1 colcheia mi6 1 colcheia fa6_sustenido 1 seminima+colcheia si6 1 minima+colcheia la6 1 seminima+colcheia 0 1 seminima mi6 1 colcheia fa6_sustenido 1 colcheia mi6 1 colcheia fa6_sustenido 1 seminima+colcheia si6 1 minima+colcheia la6 ];

for i=1:3:length(pauta)
    nota = geranota(pauta(i+2),pauta(i+1),Fs);
    musica = horzcat(musica,nota);
end
musica = musica/max(musica);
%sound(musica,Fs);
sound(original,Fs)