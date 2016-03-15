# Latent Variables

Maximum Likelihood:

```latex
M* = argmax_m P(D|M)
```

We used regression to minimise error

D = Dataset
```
E & = \frac{1}{2} \langle||\hat{y} - y||\rangle \\
D & = \left( x^{(?)} \mapsto y^{(P)} \right )_p
```

Get the probability of the Data given the settings on the machine
```latex
E & = \log P(D_y | M,D_x) \\
& = \sum_P - \log P \left(y^{(P)} | \hat{y}^{(P)} \right) \\
& = \sum_P - \log P_{noise} \left(y^{(P)} - \hat{(P)} \right) \\
& = \sum_P - \log \frac{1}{\sqrt{2\pi\sigma^2}} e^{- \frac{1}{2} \frac{\left(y^{(P)} - \hat{y}^{(P)} \right)^2}{\sigma^2}} \\
& = \sum_P \frac{1}{2} \log 2\pi\sigma^2 + \frac{1}{2\sigma^2} \left(y^{(P)} - \hat{y}^{(P)} \right)^2
```

### Graphical Model
Edges on graph represent relationships between data points

#### Example
Symptom: Grass is wet

Possible causes:
- rail
- sprinklers

Relationships
Rain => Sprinkler: rain implies not using sprinklers

Symptom: house shaking
Possible causes:
- Thunder
- earthquake
- airplane crash

Just get graph off someone else
