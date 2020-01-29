%Rule of Cramer 2x2
%Ax=B
%x=inv(A)*B
%3x-1y=9
%-2x+4y=-16
clear
clc
format long
%Data of the system of equations
disp('Rule of Cramer 2x2');
fprintf('\n');
disp('3x-1y=9');
disp('-2x+4y=-16');
fprintf('\n');
A = zeros(2,2);
B = zeros(2,1);
X = zeros(2,1);
%data
A(1,1)=3;
A(1,2)=-1;
A(2,1)=-2;
A(2,2)=4;
B(1)=9;
B(2)=-16;
disp('determinant of the system=');
disp(det(A));
if det(A)==0
    disp('The determinant of the system is zero');
    disp('The system either has no solutions or has infinite solutions');
    break;
else
end
delta=det(A);
A(1,1)=B(1);
A(1,2)=-1;
A(2,1)=B(2);
A(2,2)=4;
deltax=det(A);
A(1,1)=3;
A(1,2)=B(1);
A(2,1)=-2;
A(2,2)=B(2);
deltay=det(A);
X(1)=deltax/delta;
X(2)=deltay/delta;
disp('Solution x,y');
fprintf('\n');
disp(X)

