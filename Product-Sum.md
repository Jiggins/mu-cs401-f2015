Graph with two nodes:
- {Photo of board}
- Vector/Probablity joining two nodes = f(x_1,x_2)
- Probability of entire graph: $P(x_1, \dots, x_n) = \Pi_j f_f (x_{a(j)}, x_{b(j)})$
- P(X_m | all children of n)
- Results in bipartite graph


## Boltzman Machine
- Take some binary undirected graph/network of vectors
- Split into hidden and visible
- Energy $iE = \sum_{i < j} s_i s_j w_{ij}$
- $iP(\alpha) \alpha e^{-\frac{E \alpha}{T}}$
- Pick State - $s_i, Es_i=1, Es_i=0$

$$
\frac{P(\alpha[s_i = 1])}{P(\alpha [s_i = 1]) + P(\alpha[s_i = 0])}
= \frac{e^{\frac{E\alpha_i s_i = 1}{T}}}{e^{\frac{E\alpha_i s_i = 1}{T}} + e^{\frac{E\alpha_i s_i = 1}{T}}}
= \frac{1}{1+e^{\frac{E\alpha_i s_i = 1 - E\alpha_i s_i = 0}{T}}} \\
\\
\frac{E\alpha_i s_i = 1 - E\alpha_i s_i = 0}{T} = grad\ E_{x,j} = \sum_j s_j w_{ij}
$$
