% First-order least squares fit (linear)
% Given data vectors x and y

x = [0 1 2 3]';              % Example input data (column vector)
y = [1.2 0.2 2.9 2.1]';  % Corresponding Measurement values

% Design matrix A for first-order: [1 x]
A = [ones(length(x), 1), x];

% Least squares solution: theta = inv(A'*A) * A' * y
theta = inv(A' * A) * A' * y;

% Fitted output
y_fit = A * theta;

% Plotting
figure;
plot(x, y, 'ko', 'MarkerFaceColor', 'k'); hold on;
plot(x, y_fit, 'g-', 'LineWidth', 2);
legend('Measurement', 'First-order LS Fit');
xlabel('x'); ylabel('y');
title('First-order Least Squares Fit');
grid on;
