# Lecture 7 Dynamics of Gradient Descent
An important part of Machine Learning is how much time it takes

## Gradient Descent's connection to Physics
The Error function in machine learning is the analogue to Energy in Physics.

Gradient descent in physical terms is like a table wobbling or a pendulum swinging. When the table is deformed there is a restoring force pushing back.Or it is like a pendulum when it is pushed there is a restoring force proportional to the distance it was moved from the point of minimum energy. 
It is not an abrupt transition like letting a table falling. 


## 1 Dimensional situation
We have for a pendulum:
F(x) = - c*x, where F is the force on the pendulum , x is the distance for minimum energy position. 

E(x)= ∫<sup>x</sup><sub>0</sub> F(s) ds
= -c∫<sup>x</sup><sub>0</sub> s ds
= -c s<sup>2</sup> / 2 |<sup>x</sup><sub>0</sub>
=1/2 c x<sup>2</sup>

In a discrete system we have the following formula for gradient descent:
w(t+1)= w(t) - η  ∇<sub>w</sub>E

In a continuous physical system we have:
w(t+h)= w(t) - η h  ∇<sub>w</sub>E

Rearranging we have:

(w(t+h)- w(t))/h = - η ∇<sub>w</sub>E

Taking the limit as h → 0 we have that:
dw/dt = - η ∇<sub>w</sub>E.

This formula corresponds to a particle going downhill with no momentum (the particle would be said to be in a highly viscous medium)

The steps taken in finding the gradient above are very small, which from a computational point of view is very bad. What we want to do is to take as large of steps as possible.


### How big of a step can we take?
For a 1  Dimension system:
w(t+1)= w(t) - η  ∇<sub>w</sub>E
= w(t) - η  d/dw(E)
= w(t) - η  d/dw(1/2 c w(t)<sup>2</sup> ), using formula for E above
= w(t) - η c w(t)
= w(t)(1 - η c)

c and  η must both be greater than zero. You can't choose c but can choose  η (the learning rate)

We can write the above another way:

w(t)=(1- c η)<sup>t</sup> w(0)

The limitation on  η:

we must have |1- cη|<1 otherwise it would  grow and not would not have convergence of the gradient.  From |1- cη|<1 we get that
-1< 1- cη
=> -2<cη
=> η < 2/c , which is called the limit of conversion.

letting η= 1/c will give us the fatest possible convergence of the gradient.

## 2 Dimensional DeCoupled situation
For this situation we have the following Energy formula:

E= 1/2 c<sub>1</sub> w<sub>1</sub><sup>2</sup>+1/2 c<sub>2</sub> w<sub>2</sub><sup>2</sup>.

Since 1/2 c<sub>1</sub> w<sub>1</sub><sup>2</sup> and 1/2 c<sub>2</sub> w<sub>2</sub><sup>2</sup> are independent of one another, the system is said to be decoupled.

We will assume only 1 value of η can be picked.


w=(w1, w2)

∇<sub>w</sub>E= (d/dw<sub>1</sub> (E) , d/dw<sub>2</sub>(E))
= (c<sub>1</sub> w<sub>1</sub>,c<sub>2</sub> w<sub>2</sub>)

Looking at the formula w(t+1)= w(t)- η∇<sub>w</sub>E, we get the independent equations:

w<sub>1</sub> (t+1)= w<sub>1</sub>(t)- ηc<sub>1</sub> w<sub>1</sub>(t)


w<sub>2</sub> (t+1)= w<sub>2</sub>(t)- ηc<sub>2</sub> w<sub>2</sub>(t)

and the constraints that η < 2/c<sub>1</sub> and η < 2/c<sub>2</sub>
=> η < 2/max(c<sub>1</sub>,c<sub>2</sub>).

We can rewrite the formulas above as:
w<sub>1</sub> (t)= ( 1- ηc<sub>1</sub>)<sup>t</sup> w<sub>1</sub>(0) and

w<sub>2</sub> (t)= ( 1- ηc<sub>1</sub>)<sup>t</sup> w<sub>2</sub>(0)


Let c<sub>1</sub> < c<sub>2</sub> then η < 2/c<sub>2</sub> 

Set η= 1/c<sub>2</sub>

w<sub>2</sub> (t)=0 and

w<sub>1</sub> (t)= ( 1- c<sub>1</sub>/c<sub>2</sub> )<sup>t</sup> w<sub>1</sub>(0)

Since 1-c<sub>1</sub>/c<sub>2</sub>  will be close to 1, then you have to raise t to a very high power to find the optimum gradient. That ratio max(c1,c2)/max(c1,c2) is called the convergence limit and it setermines the speed of learning. 

However a decoupled situation is not very realistic and most situations are non-quadratic. However near the optimum it looks quadratic.

## 2D Coupled situation
In this scenairo we will use Taylor series around the point w*, the point at which the maximum gradient is.

E(w\*+ Δw)= E(w *)+0+  1/2 (Δw)<sup>T</sup>  ∇<sup>2</sup><sub>w</sub>E(Δw)+ O(||(Δw)||<sup>2</sup>.

we get 0 as the second term since  ∇<sub>w</sub>E=0 at w*


Set H= ∇<sup>2</sup><sub>w</sub>E

For the previous decoupled situation we have:

H = [[∂<sup>2</sup>E/∂w<sub>1</sub><sup>2</sup>, ∂<sup>2</sup>E/∂w<sub>1</sub>∂w<sub>2</sub>], [∂<sup>2</sup>E/∂w<sub>2</sub><sup>2</sup>, ∂<sup>2</sup>E/∂w<sub>2</sub>∂w<sub>2</sub>]] = [[c1,0],[0,c2]], that is, the 2x2 diagonal matrix with c1 and c2 along the main diagonal.

Hence 1/2 Δw<sup>T</sup> H Δw = 1/2 Σ<sub>i</sub> Σ<sub>j</sub> (∂<sup>2</sup>E/∂w<sub>i</sub>∂w<sub>j</sub> Δw<sub>i</sub> Δw<sub>j</sub>.

Diagonal Matrices are easy to work with. We can choose a new coordinate system (a new basis) such that we always get a diagonal matrix through the use of eigenvectors.

∇E(w\* + Δw)= H Δw+ o(|| Δw||<sup>2</sup>)
=> ∇E(w\* + Δw)≅ H Δw

Let v<sub>i</sub> be a eigenvector of H then Hv<sub>i</sub> = λ<sub>i</sub> v<sub>i</sub> and we can express Δw in the eigenbasis:

Δw = Σ<sub>i</sub> b<sub>i</sub> v<sub>i</sub>

Then H Δw = H Σ<sub>i</sub> b<sub>i</sub> v<sub>i</sub> = Σ<sub>i</sub> b<sub>i</sub> H v<sub>i</sub> = Σ<sub>i</sub> b<sub>i</sub> λ<sub>i</sub> v<sub>i</sub>.

Hence the formula for b<sub>i</sub>(t+1) = λ<sub>i</sub> - η λ<sub>i</sub> b<sub>i</sub>(t) with η < 2/(max<sub>i</sub> λ<sub>i</sub>)

The "condition number" of H is λ<sub>max</sub> / λ<sub>min</sub>.
