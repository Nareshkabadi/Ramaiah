% Define initial values
initial_velocity = 50; % in meters per second
launch_angle = 45; % in degrees
g = 9.81; % acceleration due to gravity in m/s^2

% Convert the angle to radians
angle_rad = launch_angle * pi / 180;

% Calculate the time of flight (total time in the air)
total_time = (2 * initial_velocity * sin(angle_rad)) / g;

% Generate time points for plotting
t = linspace(0, total_time, 100);

% Calculate x and y positions at each time point
x = initial_velocity * cos(angle_rad) * t;
y = initial_velocity * sin(angle_rad) * t - 0.5 * g * t.^2;

% Plot the trajectory
plot(x, y, 'b', 'LineWidth', 1.5);
title('Projectile Trajectory');
xlabel('Distance (m)');
ylabel('Height (m)');
grid on;

% Highlight the maximum height and range points
hold on;
max_height = max(y);
range = max(x);
plot(range, 0, 'ro'); % Range point
plot(range / 2, max_height, 'go'); % Max height point
legend('Trajectory', 'Range', 'Max Height');
hold off;