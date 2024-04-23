T=1/440
A=5000
Fs=22050
t=[0:1/Fs:T*1.5]
x=0;
for k=1:50   
x=x-(((2*A)/(pi*k))*sin(((2*pi)/T)*k*(t)));
end
figure(1);
plot(x)