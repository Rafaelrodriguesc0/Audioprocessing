tempo = 0.3;

Fs =22050;
musica =0;

do = 261.63/440;
re = 293.66/440;
mi = 329.63/440;
fa = 349.23/440;
sol = 392.00/440;
la = 440.00/440;

pauta = [];

for i=1:length(pauta)
    nota = geranota(pauta(i),tempo,Fs);
    musica = horzcat(musica,nota);
end
musica = musica/max(musica);
sound(musica,Fs);
