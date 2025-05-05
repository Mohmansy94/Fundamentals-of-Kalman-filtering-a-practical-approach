% Zeroth-order least squares fit (constant fit)
% Given data vectors x and y

x = [0 1 2 3]';              % Example input data (column vector)
y = [1.2 0.2 2.9 2.1]';  % Corresponding Measurement values

% Design matrix A: for zeroth-order, it's just a column of ones
A = ones(length(x), 1);

% Least squares solution: theta = inv(A'*A) * A' * y
theta = inv(A' * A) * A' * y;

% Fitted output (constant value)
y_fit = A * theta;

% Plotting
figure;
plot(x, y, 'ko', 'MarkerFaceColor', 'k'); hold on;
plot(x, y_fit, 'b-', 'LineWidth', 2);
legend('Measurement', 'Zeroth-order LS Fit');
xlabel('x'); ylabel('y');
title('Zeroth-order Least Squares Fit');
grid on;
