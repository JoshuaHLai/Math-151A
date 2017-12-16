%%%Jacobi Iterative Method

%%%Hard set values from the assignment
A = [0.5; 0.33];
B = [0 0.5; 0.33 0];
initial = [1; 1];

%%%Create initial value
value = A - B * initial;

%%%Create arrays to hold data points
q_1 = [1];
q_2 = [1];

%%%Compute Jacobi Iterative Method
for i = 2:20
    result_matrix = A - B * value;
    
    q_1 = [q_1 result_matrix(1,1)];
    q_2 = [q_2 result_matrix(2,1)];
    
    value = result_matrix;
end

%%%Create index array since I'm too lazy to type it out
index = [];
for j = 1:20
    index = [index j];
end

disp(index);
disp(q_1);
disp(q_2);

plot(index, q_1);
title('Graph for q_1^n');
xlabel('Index');
ylabel('q_1^n');

plot(index, q_2);
title('Graph for q_2^n');
xlabel('Index');
ylabel('q_2^n');


