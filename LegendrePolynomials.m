function[]=LegendrePolynomials()
%Creates Legendre polynomials plots of degree >=2 of the function f
degree=9;
x=-1:0.005:1;x=x';
%Function f
f=x
p=zeros(length(x),degree+1);
p(:,1)=1;p(:,2)=f;
for n=2:degree
    p(:,n+1)=((2*(n-1)+1)*f.*p(:,n)-(n-1)*p(:,n-1))/(n);
    figure(1)
    plot(x,p(:,n+1))
    ax=gca;
    ax.XAxisLocation = 'origin';
    ax.YAxisLocation = 'origin';
    axis([-1.1 1.1 -1.1 1.1]) 
    hold on;
    pause(.2)
end
end