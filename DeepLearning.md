# Deep Learning

## Vanilla MLP - shallow
**Support vector Machines** are shallow as they depend on kernel
function; weighted sum + input. (positive + negative). The system is learning
weights, not some deep structure.


One way to make a network more powerful is to make it deeper, give it a cascaded
architecture. Each layer give different pieces of information. Similar to brains.

Eyes -> Retina -> Cortex

[fig3] Similar to a co=lock cycle (Recurrent Neural Network)

[fig2] May be dubious of back propagation. For example, set all inputs to
a small positive values. Think about calculating the gradient, let all the be
linear. For each value you have the de/dv with respect to one direction. The
product of the derivative of a given direction should be 1 compared to the weights.
If weights are too large they product could become 0. On the other hand, the
product would be too large, saturating the network, making the gradient signal
useless. 

[fig4] At time t the value of a node = derivative of t respect to (t-1)

At time t = 0; We have 4 hidden unit
At time t = 1; Hidden unit 1 influences hidden units 2,3,4
                           2 influences hidden unit 3
                           3 influences hidden unit 4
                           4 influences hidden unit 2

At time t = 1; Hidden unit 1 influences hidden units 2,3,4
                           2 influences hidden unit 3
                           3 influences hidden unit 4
                           4 influences hidden unit 2

Repeats for all t = n

This is called a 'Deep Feed Forward Network'

### rectified Linear

```
|
|        /
|       /
|      /
|-----/ y
+-------------
```

## Autoassociative Network


Some simple error measure:

Some input with a hidden layer that is the compressed representation -> output.

Error = input - output
E = <||in - output||^2>

If it is just a linear system between two nodes then compression is easy. For
non-linear, with different widths, things get more interesting.

If the input is 1000000-dimensional and the hidden is 1000-dimensional but the
input is at 8 bit resolution whereas the hidden node is at 256bit resolution,
this is not ideal so we can add some noise to the compressed representation.

Ideas to improve Neural Network
- unsupervised learning - layer-by-layer
- sparsity
- non-linearity

### LeNet
They use **convolutional networks** to recognise digits. For each patch of the
image I would like to have multiple layers in a network, so that as the image
shifts, the algorithm shifts with it. A single node will be looking at an n*n
patch and another will be looking at a slightly different location and
calculate a weight between them. This is called convolution, similar to Compute
Vision. This can be cascaded so that a hidden node can be looking at a patch on
a different plane.

## Dropout
If you train a deep network, you may get the following, it may respond to
a particular pattern or feature, if two hidden are looking for similar features
and more than one go off at a time, then there are trade-offs between them, if
you need to change one of them then you will need to change the other, this
introduces constraints to the system. The idea of dropout is to make the
network drop some hidden values to relieves some of the constraints so that
each layer can not rely on the relationships between layers. 

For the Recurrent networks, you would imagine that they would be good for
places where you need to act. These networks want to calculate information now
and use later. You want to be able to hold the information for a while and not
worry about losing it. People tend to add boxes to the network to store data
where an update has to be triggered. Where the box can be read and written to.
Deep learning paper
