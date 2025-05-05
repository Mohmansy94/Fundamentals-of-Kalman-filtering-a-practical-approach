% Fourth-order least squares fit (quartic)
% Given data vectors x and y

x = [0 1 2 3]';              % Example input data (column vector)
y = [1.2 0.2 2.9 2.1]';  % Corresponding Measurement values

% Design matrix A for fourth-order: [1 x x^2 x^3 x^4]
A = [ones(length(x), 1), x, x.^2, x.^3, x.^4];

% Least squares solution: theta = inv(A'*A) * A' * y
theta = inv(A' * A) * A' * y;

% Fitted output
y_fit = A * theta;

% Plotting
figure;
plot(x, y, 'ko', 'MarkerFaceColor', 'k'); hold on;
plot(x, y_fit, 'c-', 'LineWidth', 2);
legend('Measurement', 'Fourth-order LS Fit');
xlabel('x'); ylabel('y');
title('Fourth-order Least Squares Fit');
grid on;
