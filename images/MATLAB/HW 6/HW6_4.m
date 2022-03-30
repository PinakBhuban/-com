clear;
clc;
n=3;
f=cell(n,1);

f{1}=@(x) x(1)^3-10*x(1)+x(2)-x(3)+3;

f{2}=@(x) x(2)^3+10*x(2)-2*x(1)-2*x(3)-5;

f{3}=@(x) x(1)+x(2)-10*x(3)+2*sin(x(3))+5;

x=[1;1;1];

tol=1e-4;
delta=0.00001;
Er=Inf;
J=zeros(n,n);
F=zeros(n,1);
iteration=0;
while Er>tol
for i=1:n
for j=1:n
X=x;
X(j)=X(j)+delta;
J(i,j)=(1/delta)*(f{i}(X)-f{i}(x));
end
F(i,1)=-f{i}(x);
end
Aug=[J F];
for i=1:1:n-1
for j=i+1:n
Aug(j,:)=Aug(j,:)-(Aug(j,i)/Aug(i,i))*Aug(i,:);
end
for j=i-1:-1:1
Aug(j,:)=Aug(j,:)-(Aug(j,i)/Aug(i,i))*Aug(i,:);
end
end
dX=zeros(n,1);
for i=1:n
dX(i,1)=Aug(i,n+1)/Aug(i,i);
end
Er=max(abs(dX));
for i=1:n
x(i)=x(i)+dX(i);
end
iteration=iteration+1;
end
fprintf('The solution after %d iterations are\n',iteration);
disp(x);