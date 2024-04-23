%function amostras = geranota(nota, duracao, Fs) 
duracao=1
T0=1.0/(440)
T=1/(440*nota)
A=5000
Fs=22050
t=[0:1/Fs:duracao]
t2=[0:1/Fs:(1/10)*duracao]
x=0; 

for k=1:50  

x=x-(((2*A)/(pi*k))*sin(((2*pi)/T)*k*(t)));
end
sizeX=length(x);
aux=(pi/2)/((1/10)*sizeX);
for i=1:(sizeX)*(1/10)
x(i)=x(i)*sin(aux*(i));
end
q=round(sizeX-(1/10)*sizeX+0.5)
for m=q:(sizeX)
x(m)=x(m)*sin(aux*(m));
end
sound(x,Fs)
figure(1);
plot(x)
%end