%%%Secant Method%%%

Function = input('Enter Function:','s');
f = inline(Function);

x(1) = input('Enter First Term: ');
x(2) = input('Enter Second Term: ');
tolerance = 0.0001;

i=2;
eps = 1e10;

x_array = zeros(29: 1);
y_array = zeros(29: 1);

x_array(1) = 0;
y_array(1) = pi / 4;
x_array(2) = 1;
y_array(2) = 3 * pi / 8;

while (abs(eps) > tolerance)
    x(i+1)=x(i)-f(x(i))*(x(i)-x(i-1))/(f(x(i))-f(x(i-1)));
    eps = x(i+1)-x(i);
    i = i+1;
    x_array(i + 1) = i;
    y_array(i + 1) = x(i);
    x(i)
end

plot(x_array, y_array, '-o')