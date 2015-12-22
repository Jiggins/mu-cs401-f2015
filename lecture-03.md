Rosenblatt's perceptron

Perceptron Research from the 50s and 60s

https://www.youtube.com/watch?v=cNxadbrN_aI

https://www.youtube.com/watch?v=evVSV43CRk0

training vs testing

regression

stochastic gradient

https://www.youtube.com/user/stanfordhelicopter

Transcription from Lecture
----------------------------------------------
Machine Learning Tree
=====================
<Include machine learning tree>

###Perceptron Equations

> < x <sup>T</sup> x > w = < xy<sup>T</sup> >

> (ɛI + < x <sup>T</sup>x> w) = < xy<sup>t</sup>>

The above is a more robust error measure (Used mainly by statisticians)

Instead of E = <sup>1</sup>/<sub>2</sub> < ||ŷ - y||<sup>2</sup> > we use a lower power
    E = <sup>1</sup>/<sub>2</sub> < ||ŷ - y||<sup>1</sup> >

<Insert demonstration graph>

Another factor that would help in making the system robust would be the removal of outliers from the dataset.

Non-Linear Functions
====================
We'll be moving on from using linear classifiers (Perceptrons) for machine learning to using streaming, non-linear functions. A use case for using these non-linear functions would be in the processing video clips. One training case for a 5 second clip would be ~20mb! Which would include around a million different vectors for machine learning.

The < x <sup>T</sup> x > matrix space is in the order of O(n<sup>2</sup>)

Stochastic Gradient Descent
===========================

> ∇<sub>w</sub>E = <sup>1<sub>0</sub></sup> 0

As is, it's great for finding the minimum for flat curves in the weight-space. However, it's more difficult to solve for more complicated shapes.

[Topographic_1]
[Topographic_2]

##Finding the optimum for a more complicated shape.

We undergo a process of iteration in order to find the local minima.

>w(t+1) = w(t) - η∇<sub>w</sub>E

>where η > 0

The function above is known as a naïve gradient descent as we only select one value for η. A better implementation would have more values for η as we descend.
> E = <sup>1</sup>/<sub>2</sub> < ||ŷ - y||<sup>2</sup> >

> ∇<sub>w</sub>E = < <sup>1</sup>/<sub>2</sub> ∇<sub>w</sub> ||ŷ - y||<sup>2</sup> > <- ŷ = f(x; w)

> <text>=</text> < <sup>1</sup>/<sub>2</sub> ∇<sub>w</sub> (ŷ - y)<sup>T</sup>(ŷ - y) >

> <text>=</text> < <sup>1</sup>/<sub>2</sub> ∇<sub>w</sub> (ŷ <sup>T</sup> ŷ) -2y<sup>T</sup> ŷ + y<sup>T</sup>y >

> <sup>dE</sup>/<sub>dw<sub>k</sub></sub> = < <sup>1</sup>/<sub>2</sub> (<sup>d</sup>/<sub>dw<sub>k</sub></sub>(ŷ <sup>T</sup> ŷ) -2y<sup>T</sup> (<sup>d</sup>/<sub>dw<sub>k</sub></sub> ŷ)) >

Dimensionality of the ŷ matrix is respective to w.

Average error of whole dataset:

> E = <Ê<sup>(i)</sup>><sub>i</sub> <- Also known as the per sample error average

Gradient descent using this sample error average:

∇<sub>w</sub>E = <∇<sub>w</sub>Ê>
> 
Stochastic gradient descent
***

> w(t+1) = w(t) - η<∇<sub>w</sub>Ê> 

If η(t) ~= <sup>1</sup>/<sub>t</sub>, the algorithm is guaranteed to converge to a local minimum. However, we must constrain η(t) like so:

>O(<sup>1</sup>/<sub>t<sup>2</sup></sub>) < η(t) ≤ O(<sup>1</sup>/<sub>t</sub>)

The SGD algorithm will yield increasingly better results after a 'warm up' period.

We add what we've gathered to a diagram of a perceptron.

[Diagram here]

>s(φ) = <sup>1</sup>/<sub>1+e<sup>-φ</sup></sub>

1) This equation can be considered as a good approximation for current spiking in a biological neuron

2) The following evaluation deals with the output from the perceptron diagram above:
> Ê = <sup>1</sup>/<sub>2</sub>(ŷ - y)<sup>2</sup>

> <sup>dÊ</sup>/<sub>dw<sub>k</sub></sub> =<strike> <sup>1</sup>/<sub>2</sub> . 2 </strike> (ŷ - y) . s<sup>'</sup>(w.x)x<sub>k</sub>

> w<sub>k</sub>(t+1) = w<sub>k</sub>(t) - η(ŷ - y)s<sup>'</sup>(w . x))x<sub>k</sub>

> ∴

> w<sub>k</sub>(t+1) = w<sub>k</sub>(t) - η(ŷ - y) s<sup>'</sup> (w . x) x<sub>k</sub>

η is considered as our learning rate. The smaller the value for η the more stable the system is.


> (s<sup>'</sup>(φ) = s(φ)(1-s(φ)) <--- Epidemic equation)


Semi linear systems
===================

The error function defined below is called the Cross-Entropy function. This matches well with s(φ).

> E = -(y log ŷ + (1-y)log(1-ŷ))

> Minimum ŷ = y
> If y = 0 as ŷ tends 1 then E tends to infinity

In semi linear systems we can define our output ŷ as being a probability of truth

##Logistic Regression
Logistic regression can be defined as the combination of the Cross-Entropy error + Regression
