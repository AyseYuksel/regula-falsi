%function [w,err]=regula_falsi(func,a,b,n)
%for example: [result,error]=regula_falsi('x.^3-x-1',1,2,5)

function [w,err]=regula_falsi(func,a,b,n)

str1='@(x)';
str2=func;
str=[str1 str2];
f=str2func(str);

if f(a).*f(b)<=0
    for i=0:n
     w=((((f(b).*a)-((f(a).*b))))/((f(b)-f(a))));
     err=(f(w));
  %  disp([w err]);
      if f(a).*f(w)<0
        a=a;
        b=w;
      else
        a=w;
        b=b;
      end
    end
else
    disp("this function has no root ");
end