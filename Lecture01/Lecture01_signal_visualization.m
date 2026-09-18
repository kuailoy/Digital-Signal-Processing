%% Task 1: Create a Sine Wave

% Parameters
A = 1;              % Amplitude
f = 5;              % Frequency in Hz
duration = 1;       % Duration in seconds
Fs = 1000;          % Sampling frequency

% Time vector
t = 0:1/Fs:duration;

% Generate sine wave
x = A * sin(2*pi*f*t);

% Plot the sine wave
figure;
plot(t, x, 'LineWidth', 1.5);

title('5 Hz Sine Wave');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;


%% Task 2: Compare Different Frequencies

% Frequencies to compare
frequencies = [2, 5, 10];

% Create a new figure
figure;

% Loop through each frequency
for i = 1:length(frequencies)

    % Get the current frequency
    f = frequencies(i);

    % Generate the sine wave
    x = sin(2*pi*f*t);

    % Create a subplot
    subplot(3, 1, i);

    % Plot the signal
    plot(t, x, 'LineWidth', 1.2);

    % Add title and labels
    title(sprintf('Sine Wave - %d Hz', f));
    xlabel('Time (s)');
    ylabel('Amplitude');

    % Enable grid
    grid on;

end

% Save the figure
exportgraphics(gcf, 'frequency_comparison.png');

%% Task 3: Compare Different Amplitudes

% Amplitudes to compare
amplitudes = [0.5, 1, 2];

% Common frequency
f = 5;

% Create a new figure
figure;

% Loop through each amplitude
for i = 1:length(amplitudes)

    % Get the current amplitude
    A = amplitudes(i);

    % Generate the sine wave
    x = A * sin(2*pi*f*t);

    % Create a subplot
    subplot(3, 1, i);

    % Plot the signal
    plot(t, x, 'LineWidth', 1.2);

    % Add title and labels
    title(sprintf('Sine Wave - Amplitude = %.1f', A));
    xlabel('Time (s)');
    ylabel('Amplitude');

    % Enable grid
    grid on;

end

% Save the figure
exportgraphics(gcf, 'amplitude_comparison.png');


%% Task 4: Add Noise

% Common frequency
f = 5;

% Generate a clean sine wave
x_clean = sin(2*pi*f*t);

% Generate random noise
noise_amplitude = 0.3;
noise = noise_amplitude * randn(size(t));

% Add noise to the clean signal
x_noisy = x_clean + noise;

% Create a new figure
figure;

% Plot the clean signal
subplot(2, 1, 1);
plot(t, x_clean, 'LineWidth', 1.2);
title('Clean Sine Wave');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% Plot the noisy signal
subplot(2, 1, 2);
plot(t, x_noisy, 'LineWidth', 1.0);
title('Noisy Sine Wave');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% Save the figure
exportgraphics(gcf, 'clean_vs_noisy_signal.png');