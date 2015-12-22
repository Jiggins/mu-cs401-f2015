3/11/2015

#Bayes' Rule, Coin Toss and K-Means

The proportion of tall people with cancer > Population of people with cancer within entire population

http://www.futilitycloset.com/2015/10/19/more-fun/

Q: If tall people are more likely to get cancer, then are people who get cancer more likely to be tall?

<a href="url"><img src="https://raw.githubusercontent.com/barak/mu-cs401-f2015/0c97806b39f09dd012d666c71538601be86cb2fd/images/lecture-17/Cancer-problem.png" height = "280" width = "598"></a>

So, yes people who get cancer are more likely to be tall.

##Bayes' Rule
<a href="url"><img src="https://raw.githubusercontent.com/barak/mu-cs401-f2015/0c97806b39f09dd012d666c71538601be86cb2fd/images/lecture-17/Bayes-rule.png" height = "227" width = "607"></a>

Imagine a machine, with various parameters, that produces data randomly, and a database of some kind of documents.

When run, it produces a one-page document. 

There is a very small chance that it will match a document already in our database.

However, if we set the parameters a certain way, our machine may produce a document similar to docs in the database.

How do we set these parameters properly?

##Setting the Parameters on our documents machine

<a href="url"><img src="https://raw.githubusercontent.com/barak/mu-cs401-f2015/0c97806b39f09dd012d666c71538601be86cb2fd/images/lecture-17/Coins.png" height = "791" width = "1144"></a>

##Discrete Distribution

Consider a coin flipping machine, with a 0-1 probability parameter.
The machine can either produce 0, for heads, or 1, for tails.

It has a binary dataset (y1, ..., yn)

And the machine outputs (ŷ1, ..., ŷn)

In a dataset of ~100, the chances of ŷ = y is vanishing small.

Note that we can store vanishing small numbers as logarithm.

<a href="url"><img src="https://raw.githubusercontent.com/barak/mu-cs401-f2015/0c97806b39f09dd012d666c71538601be86cb2fd/images/lecture-17/bernoulli.png" height = "214" width = "702"></a>

If the machine has memory, then every coin flip will be like taking marbles from a bag, and not replacing them 

-> every previous result will affect the next result.

However, this is not how coin tosses work, every coin toss outcome is independent, so our machine has no memory.

##K-means
K-means is an unsupervised learning algorithm that classifies a given data set into clusters.

We can imagine the dataset is produced by a machine that will populate a graph with data.

The machine has three inner machines, each of which will produce a data point that is around a certain area, but has some degree of randomness or noise.

Using K-means, we want to look at this data set and find out which points were created by which machine.

We will look at K-means further in Lecture 13.
