| Sampling frequency | Nyquist frequency | Observed peak | Aliasing |
|---|---:|---:|---|
| 24 kHz | 12 kHz | 7 kHz | No |
| 16 kHz | 8 kHz | 7 kHz | No |
| 12 kHz | 6 kHz | 5 kHz | Yes |
| 8 kHz | 4 kHz | 1 kHz | Yes |


### 1. Which sampling frequencies represented the 7 kHz signal correctly?

24 kHz and 16 kHz.
Their Nyquist frequencies are 12 kHz and 8 kHz, both higher than 7 kHz.

### 2. When did the 7 kHz signal appear as another frequency?

It appeared as another frequency when the sampling frequency was 12 kHz or 8 kHz.
- 12 kHz → 7 kHz appears as 5 kHz
- 8 kHz → 7 kHz appears as 1 kHz

### 3. What happened when the Nyquist frequency became lower than 7 kHz?

The 7 kHz signal could no longer be represented correctly. It was aliased into a lower frequency.

### 4. Did the aliased signal sound different?
Yes. The aliased signal sounded like a lower-frequency tone.

For example, when \(f_s=12\) kHz, the 7 kHz tone sounded like approximately 5 kHz. When \(f_s=8\) kHz, it sounded like approximately 1 kHz.

### 5. Why can MATLAB not recover the original 7 kHz signal after aliasing?

Because after sampling, the information needed to distinguish the original 7 kHz signal from its alias is lost. The sampled data can represent the 7 kHz signal and the aliased lower-frequency signal identically, so MATLAB cannot know which one was the original.