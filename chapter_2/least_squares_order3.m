% Third-order least squares fit (cubic)
% Given data vectors x and y

x = [0 1 2 3]';              % Example input data (column vector)
y = [1.2 0.2 2.9 2.1]';  % Corresponding Measurement values

% Design matrix A for third-order: [1 x x^2 x^3]
A = [ones(length(x), 1), x, x.^2, x.^3];

% Least squares solution: theta = inv(A'*A) * A' * y
theta = inv(A' * A) * A' * y;

% Fitted output
y_fit = A * theta;

% Plotting
figure;
plot(x, y, 'ko', 'MarkerFaceColor', 'k'); hold on;
plot(x, y_fit, 'm-', 'LineWidth', 2);
legend('Measurement', 'Third-order LS Fit');
xlabel('x'); ylabel('y');
title('Third-order Least Squares Fit');
grid on;
