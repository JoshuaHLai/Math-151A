%%%Problem 5a: Graph the function f(x) = |x|%%%
x = linspace(-1,1,3);
y = abs(x);

figure
plot(x, y)

%%%Problem 5b: Calculate points of interpolation and use Wolfram Alpha to graph%%%
for n = 0:5
    for k = 0:n
        x_value = -1 + (2 * k / n);
        %disp(x_value)
        y_value = abs(x_value);
        fprintf('%i , %i \n', x_value, y_value);
    end
end

%%%Problem 5c: Plot the sequence%%%
%%%Could not generate the interpolation equations for anything beyond iteration 5%%%
%%%Did not save equations to MATLAB and too much to recalculate%%%
%%%Hard-coded the first value and moved equation to calculate%%%
xList = [1, 2, 3, 4];
yList = [1, 0.09, -.0153, .285687];

figure
plot(xList, yList)
xlabel('Iteration')
ylabel('Value')

x_5 = [1, 2.718, pi];
y_5 = [2.718, pi, 1];

figure
plot(x_5, y_5)