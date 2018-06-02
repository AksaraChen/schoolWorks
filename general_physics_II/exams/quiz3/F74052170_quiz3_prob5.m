figure(5);
h=0.1;
for x=-1:0.001:1
    y1=2*pi*cos(2*pi*x);
    z1=sin(2*pi*(x+h));
    z2=sin(2*pi*(x-h));
    y2=(z1-z2)/2/h;
    y=abs(y1-y2);
    semilogy(x,y,'r');
    hold on;
end;

h=0.01;
for x=-1:0.001:1
    y1=2*pi*cos(2*pi*x);
    z1=sin(2*pi*(x+h));
    z2=sin(2*pi*(x-h));
    y2=(z1-z2)/2/h;
    y=abs(y1-y2);
    semilogy(x,y,'b');
    hold on;
end;

h=0.001;
for x=-1:0.001:1
    y1=2*pi*cos(2*pi*x);
    z1=sin(2*pi*(x+h));
    z2=sin(2*pi*(x-h));
    y2=(z1-z2)/2/h;
    y=abs(y1-y2);
    semilogy(x,y,'m');
    hold on;
end;

h=0.0001;
for x=-1:0.001:1
    y1=2*pi*cos(2*pi*x);
    z1=sin(2*pi*(x+h));
    z2=sin(2*pi*(x-h));
    y2=(z1-z2)/2/h;
    y=abs(y1-y2);
    semilogy(x,y,'y');
    hold on;
end;