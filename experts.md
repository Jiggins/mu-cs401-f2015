
n claimed experts
k best committee
k << n

Winnow 2 (Littlestore)
$$
 \hat{y}(t) = \left [ \sum_i w_i(1) x_i(t) > \frac{1}{2} \sum_i w_i(t) \right ] \\
w_i(t) \\
w_i(0) = 1 \\
w_i(t + 1) = i
\begin{pmatrix}
  & \hat{y}(1) = 0 \\
  \alpha & y(1) = 1 \\
  & x_i(t) = 1 \\
  \\
  & \hat{y}(1) = 1 \\
  \frac{1}{\alpha} & y(1) = 0 \\
  & x_i(t) = 1 \\
  \\
  & x_i(t) = 1 \\
  \alpha & \vdots \\
  & x_i = 0 \\
  \\
  \\
  \frac{1}{2} & \dots \\
  \\
\end{pmatrix} w_i(t)
$$

## Probably Approximately correct

### Generalisation Error
The probability of the generalisation error is less than \epsilon is high.
$$
\underbrace{Pr[\underbrace{generalisation error < \epsilon}_{Approximately correct}] > 1 - \delta}_{Probably} \\
\\
\# samples = poly(\frac{1}{\epsilon}, \frac{1}{\delta})
$$

### Strong Learnability
$$
\underbrace{Pr[\underbrace{Pr(classifying\ new\ input\ correctly) > 1 - \epsilon}_{Approximately correct}] > 1 - \delta}_{Probably} \\
\\
\# samples = poly(\frac{1}{\epsilon}, \frac{1}{\delta})
$$

### Weak Learnability
$$
\underbrace{Pr[\underbrace{PR \left ( Pr(classifying\ new\ input\ correctly) > \frac{1}{2} + \epsilon \right ) > \delta }_{Approximately\ correct}] > 1 - \delta}_{Probably} \\
\\
\# samples = poly(\frac{1}{\epsilon}, \frac{1}{\delta})
$$

### ADAboost
Pass it a learning algorithm and it produces a strong learner.
$ADAboost(A\ Weak\ Learner) : Strong\ Learner$
$$
train\ set & x^{(i)} \\
weights\ & w_i(t) \\
& w_i(0) = \frac{1}{\# samples} \\
train\ learner\ & t \\
E_t & = \sum_i w_i(t) [got\ x^{(i)} wrong] < \frac{1}{2} \sum_i w_i(1) - \epsilon \\
w_i(t + 1) & = w_i (t)
\begin{bmatrix}
  \frac{1}{2} & Learner\ t\ got\ x^{(i)}\ & right \\
  1 & \dots & wrong
\end{bmatrix}
$$
