%prob(1)
%����@�䭱�n���|�����@
i=4;
h=10^(-i);
flux = 0;
  for x= 0:h:0.5
      for y=0:h:0.5
          R = (x^2+y^2+0.5^2)^(1/2);%�Z��
          E = (9*(10^9))/(R^2);%�q��
          angle = 0.5/R;% EdotA �ҥH�ݭn���Dcos(����)
          flux = flux + E*(h*h)*angle; 
      end
  end
  fprintf(1,'(1)The total flux is %.5f (Volt*m)\n',flux*4*6);
  
%prob(2)
%�P(1) �u�O���ܪ���
i=4;
h=10^(-i);
flux = 0;
  for x= 0:h:1
      for y=0:h:1
          R = (x^2+y^2+1^2)^(1/2);%�Z��
          E = (9*(10^9))/(R^2);%�q��
          angle = 1/R;% EdotA �ҥH�ݭn���Dcos(����)
          flux = flux + E*(h*h)*angle; 
      end
  end
  fprintf(1,'(2)The total flux is %.5f (Volt*m)\n',flux*4*6);
  
%prob(3)
i=4;
h=10^(-i);
flux1 = 0;
flux2 = 0;
  for x= -1:h:1
      for y=-1:h:1
          R = ((x-0.4)^2+(y-0.4)^2+(0.6)^2)^(1/2);%�Z��
          E = (9*(10^9))/(R^2);%�q��
          angle = 0.6/R;% EdotA �ҥH�ݭn���Dcos(����)
          flux1 = flux1 + E*(h*h)*angle; 
      end
  end
  for x= -1:h:1
      for y=-1:h:1
          R = ((x-0.4)^2+(y-0.4)^2+(1.4)^2)^(1/2);%�Z��
          E = (9*(10^9))/(R^2);%�q��
          angle = 1.4/R;% EdotA �ҥH�ݭn���Dcos(����)
          flux2 = flux2 + E*(h*h)*angle; 
      end
  end
  fprintf(1,'(3)The total flux is %.5f (Volt*m)\n',(flux1+flux2)*3);

  %prob(4)
  i=4;
h=10^(-i);
flux1 = 0;
flux2 = 0;
  for x= -1:h:1
      for y=-1:h:1
          R = ((x-2)^2+(y-2)^2+1^2)^(1/2);%�Z��
          E = (9*(10^9))/(R^2);%�q��
          angle = 1/R;% EdotA �ҥH�ݭn���Dcos(����)
          flux1 = flux1 + E*(h*h)*angle; 
      end
  end
  for x= -1:h:1
      for y=-1:h:1
          R = ((x-2)^2+(y-2)^2+3^2)^(1/2);%�Z��
          E = (9*(10^9))/(R^2);%�q��
          angle = 3/R;% EdotA �ҥH�ݭn���Dcos(����)
          flux2 = flux2 + E*(h*h)*angle; 
      end
  end
  fprintf(1,'(4)The total flux is %.5f (Volt*m)\n',(-flux1+flux2)*3);

  clear all;