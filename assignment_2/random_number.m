% Define number of random values
num_points = 50; % Number of random points

% Generate random numbers between 0 and 1
random_numbers = rand(1, num_points);

% Plot the random numbers
plot(random_numbers, '-o');
title('Random Number Sequence');
xlabel('Index');
ylabel('Random Value');
grid on;