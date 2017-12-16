%%%Newton's Method%%%

Function = input('Enter Function:','s');
Derivative = input('Enter Derivative:', 's');
f = inline(Function);
d = inline(Derivative);

x(1) = input('Enter Term: ');
tolerance = 0.0001;

i=2;
eps = 1e10;

x_array = zeros(29: 1);
y_array = zeros(29: 1);

x_array(1) = 0;
y_array(1) = pi / 4;

while (abs(eps) > tolerance)
    x(i+1)=x(i)-((f(x(i)) / (d(x(i)))));
    eps = x(i+1)-x(i);
    i = i+1;
    x_array(i + 1) = i;
    y_array(i + 1) = x(i);
    x(i)
end

plot(x_array, y_array, '-o')