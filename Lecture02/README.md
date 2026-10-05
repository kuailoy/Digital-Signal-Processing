# Lecture 02 – Sampling and Aliasing

## Objective

Investigate how different sampling frequencies affect a 10 Hz sine wave and observe aliasing.

## Nyquist Analysis

Signal frequency:

fmax = 10 Hz

Nyquist criterion:

fs ≥ 2 × fmax

fs ≥ 2 × 10 = 20 Hz

Therefore, the minimum sampling frequency is **20 Hz**.

- 15 Hz: Does not satisfy Nyquist
- 20 Hz: Satisfies Nyquist exactly
- 25 Hz: Satisfies Nyquist
- 50 Hz: Satisfies Nyquist
- 100 Hz: Satisfies Nyquist

## Results

Aliasing occurs at **15 Hz** because the sampling frequency is below the Nyquist rate.

The other sampling frequencies represent the 10 Hz signal correctly.

## Engineering Recommendation

**50 Hz** is recommended because it provides sufficient sampling margin while avoiding unnecessary processing and data compared with 100 Hz.
