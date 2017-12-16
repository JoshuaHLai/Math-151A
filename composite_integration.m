%Programming Assignment for Math 151A Homework #4

%Values used throughout the Assignment
%Grab number of intervals
n = input('Number of Intervals: ');

%Hard set values already given
a = 0;
b = pi;

%Find spacing between intervals
h = (b - a) / n;

% Problem 1: Design an algorithm that computes an integral based on the 
%composite trapezoidal rule

result = 0;

%Grab midpoints of intervals
x = [a + h: h: b - h];

for i = 1:n - 1
    result = result + cos(x(i));
end

result = h * (result + 0.5 * (cos(a) + cos(b)));
disp(result);

%Problem 2: Design an algorithm that computes an integral based on the
%composite Simpson Rule
sum_even = 0;
sum_odd = 0;

for i = 1:n/2 - 1
    x(i) = a + 2 * i * h;
    sum_even = sum_even + cos(x(i));
end

for i = 1: n/2
    x(i) = a + (2 * i - 1) * h;
    sum_odd = sum_odd + cos(x(i));
end

final = h * (cos(a) + 2 * sum_even + 4 * sum_odd + cos(b)) / 3;
disp(final);