Lecture 8
Notes

When we are close enough to the optimum the formula becomes quadratic and convergence rate depends on the ratio λ<sub>max</sub> / λ<sub>min</sub>


Grading descent equation from previous lectures:

> w(t+1) = w(t) - η ∇E (where η is learning rate)

Depending on our chosen learning rate we can have different outcomes:

a) learning rate is too big and convergence will never happen - with every step of descent we will move further and further from the optimum:

b) learning rate is too small, convergence will happen but this will be a slow progress and will take a lot of iterations of the algorithm

![Choice of learning rate](http://sebastianraschka.com/Images_old/2015_singlelayer_neurons/perceptron_learning_rate.png)

c) well chosen convergence rate will converge and do so reasonably quickly

To obtain such optimal learning rate we will introduce new variable - α, for momentum, such that


> 0 ≤ α < 1

(at zero we have no momentum at all, and at 1 momentum will not stop at the minimum, we need some friction to slow it down once we've reached our goal)

If we add this new factor our formula becomes:

> w(t+1) = w(t) - η ∇E + α (w(t) - w(t-1))

Simplify:

> w(t+1) - w(t) = - η∇E + α(w(t) - w(t-1))

Rewrite w(t+1) - w(t) as Δw(t) and substitute it into the formula above:

> Δw(t) = - η ∇E + α Δw(t-1)

where for stability η < 2 / λ<sub>max</sub>

There has to be a balance in setting the momentum to apply optimally to both λ<sub>max</sub> and λ<sub>min</sub>. If λ<sub>max</sub> is a lot bigger than λ<sub>min</sub> we calculate momentum using the following formula:

> Δb<sub>min</sub> = - η∂E/∂b<sub>min</sub> + αΔb<sub>min</sub>

> Δb<sub>min</sub> - αΔb<sub>min</sub> = - η∂E/∂b<sub>min</sub>

> (1 - α)Δb<sub>min</sub>  = - η∂E/∂b<sub>min</sub>

> Δb<sub>min</sub> = - η/(1 - α)∂E/∂b<sub>min</sub>

if α is too high it would affect our λ<sub>max</sub> which will have it overshoot the minimum.

However, in practice, for big data sets there are too many calculations to use batch grading descent. 
Instead, another option is to use stochastic grading descent:

> Δw(t) = - η ∇Ê 

(where Ê is ∇E plus some bounded amount of zero-mean noise)

- η has to go to zero, slowly enough that we can get rid of the noise.

> Σ<sub>t=1..∞</sub> η(t) = ∞ 

(to have enough momentum), but also, for descent to be fast enough

> Σ<sub>t=1..∞</sub> η(t)<sup>2</sup> < ∞:

so

> O(1/√t) < η(t) ≤ O(1/t)

In practice stochastic descent is not used either. We can't always get an optimum, for an algorithm that uses real life changing data a good approximation is what we aim for.

All gradient descent methods are weak, it is much better to analytically find the optimum and just "jump" there.

## Support Vector Machines(SVMs):

MLP require a lot of tuning. They are hard to implement and there's a lot of decisions that we have to make.
New approach - SVM(developed by Vladimir Vapnik and his colleagues)
Some of the SVM logic can be added to MLPs to enhance their performance.
Data example:

![data example for fitting linear classifier](images/lecture-08/separating-lines.png)

For data like this we can fit many possible linear thresholds that will predict different values. If we had to choose one, we could find a place, such that:
1) classifies data correctly
2) positioned in such a way that the nearest square and the nearest circle are as far away from it as possible.

![data example for fitting SV](images/lecture-08optimal-hyperplane.png)

Its position depends solely on data points touching the margin (the support vectors).


SVM - linear classifier with maximum margin. (The bigger the margin, the better)

