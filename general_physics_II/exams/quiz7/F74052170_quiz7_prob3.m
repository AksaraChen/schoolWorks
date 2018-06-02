%prob3a
figure(3);
a=0.5;
b=0.001;
c=0.4;
A=0.02;
R=0.004;
h=10^(-2);
rabbit=100;
for t=0:h:20
    plot(t,rabbit);
    hold on;
    rabbit_rate = (a*rabbit-b*(rabbit^2));
    rabbit = rabbit + rabbit_rate*h;
end
title('prob3-a');
fprintf(1,'prob3-a : �ߤl�����`�M�X�ͼƶq���šA�ҥH���A�W�[�M���\n');
clear all;

%prob3b
figure(4);
a=0.5;
b=0.001;
c=0.4;
A=0.02;
R=0.004;
h=10^(-2);
w=100;
for t=0:h:20
    plot(t,w);
    hold on;
    w_rate = -c*w;
    w=w+w_rate*h;
end
title('prob3-b');
fprintf(1,'prob3-b : �T�S�������ҥH�����F\n');
clear all;

%prob3c
figure(5);
a=0.5;
b=0.001;
c=0.4;
A=0.02;
R=0.004;
h=10^(-2);
rb=100;
w=6;
for t=0:h:70
    plot(t,rb,t,w);
    hold on;
    rb_rate = (a*rb-b*(rb^2))-A*rb*w;
    w_rate=(-c*w)+(R*rb*w);
    rb = rb + rb_rate*h;
    w = w + w_rate*h;
end
title('prob3-c');
fprintf(1,'prob3-c : �T�Y�ߤl�A�ߤl�ܤ֡A�T�ܦh�A��T�L�h���������ɡA�S�ܤ֡A�ߤl�]���T�ܤ֦Ӧh�A�̳o�Ӵ`���̫���䳣�ͪ񥭿�\n');
fprintf(1,'prob3-c :�@stable\n');
clear all;

%prob3d
figure(6);
a=0.5;
b=0.001;
c=0.4;
A=0.02;
R=0.004;
h=10^(-2);
rb=100;
w=600;
for t=0:h:200
    plot(t,rb,t,w);
    hold on;
    rb_rate = (a*rb-b*(rb^2))-A*rb*w;
    w_rate=(-c*w)+(R*rb*w);
    rb = rb + rb_rate*h;
    w = w + w_rate*h;
end
title('prob3-d');
fprintf(1,'prob3-d :�@�@�}�l�]���T�L�h�A���������A�ҥH��t�ܤ֡A�Өߤl�]���T�ܷ��֡A�Ө��t�W�h�A�̳o�Ӵ`���A�̫�ƶq���ͪ񥭿�\n');
clear all;
