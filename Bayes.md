# Baye's Rule

$$
\begin{aligned}
P(A|B) & = \frac {P(A) \cdot P(B|A)}
               {P(A) \cdot P(B|A) + P(\neg A) \cdot P(B| \neg A)} \\
\\
P(A|B) & = \frac {P(target) \cdot  P(True\ Positive)}
                 {P(target) \cdot  P(True\ Positive) + P(\neg target) \cdot P(False\ Positive)} \\
\end{aligned}
$$

| P(target)      | P(not target)  |
| :------------- | :------------- |
| True Positive  | False Positive |
| False Negative | True Negative  |

$P(not target) = Inverse\ P(target)$


## Autumn 2015
$$
\begin{aligned}
P(A)        & = \frac {1} {10^6} & \text{Number of faults. Probability of a faulty CPU}\\
P(\neg A)   & = 1 - (\frac {1} {10^6}) \\
P(B|A)      & = 0.99 & \text{Having a suspicious simulation}\\
P(B|\neg A) & = \frac {1} {3*10^5} & \text{}\\
P(A|B)      & = \frac {\frac {1} {10^6} \cdot 0.99}
                      {\frac {1} {10^6} \cdot 0.99 + 1 - (\frac {1} {10^6}) \cdot \frac {1} {3*10^5} } \\
P(A|B)      & = \frac {0.000000099}
                      {
\end{aligned}
$$

## January 2015
$$
\begin{aligned}
P(A)        & = \\
P(\neg A)   & = \\
P(B|A)      & = \\
P(B|\neg A) & = \\
\end{aligned}
$$
