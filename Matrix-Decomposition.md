# Matrix Decomposition

Two dimensional Gaussian matrix

$$
\begin{bmatrix}
\phantom{a} \\
x^{(1)} x^{(2)} \dots x^{(m)}
\end{bmatrix}
$$

gaussian data:
$$
x_1 ~ g(0_j, 1^2)\ E & = {x_1}^2 \\
x_2 ~ g(0_j, 2^2)\ E & = \frac{1}{2^2} {x_2}^2 \\
E(x_1, x_2) & = \frac{1}{1^2} {x_1}^2 + \frac{1}{2^2} {x_2}^2  \\
P(x) & = \frac{1}{Z} e^{\frac{1}{1^2} {x_1}^2 + \frac{1}{2^2} {x_2}^2}
$$

$$
E = \frac{1}{x_1}(c_1 x)^2 + \frac{1}{x_2}(c_2 x)^2
$$

**Note:** Knuth notation - square brackets indicate boolean statement
$$
||c_i|| = 1 \\
c_i \cdot c_j = [i=j]
$$

For some matrix X
$$
X^T \underbrace{\begin{pmatrix} \\ c_1 & c_2 & \dots & c_n \\ \\
\end{pmatrix}}_C X = \sum_i(c_i \cdot x)^2 \\
$$

$$
C_{xx} & = \langle xx^T \rangle_{ij} \\
       & = \langle x_i x_j \rangle
$$

Decomp
c = eigenvectors
$$
x & = (x \cdot c_1)c_1 + (x \cdot c_2)c_2 + \dots \\
X & = \begin{bmatrix} \\ 64 * m \\ \\ \end{bmatrix}
\cong
\begin{bmatrix}
  \\
  c_1 & c_2 & \dots & c_{12} \\
  \\
\end{bmatrix}
\cdot
\begin{bmatrix}
  \\
  \\
\end{bmatrix}
$$





