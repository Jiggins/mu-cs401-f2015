How to sample a Graphical Model
===============================

The Product-Sum algorithm is an algorithm for computing for sampling a graphical model. It works well if the graph has a tree like structure, but in other situations it isn't. It is sometimes called a message passing algorithm. 

* Add in extra nodes into your graph called "factors" in the middle of each arrow. (The original nodes are called variables). Also you can drop the directness of the graph
* This is now a bipartite graph (i.e. one which can be coloured with only 2 colours and all adjacent nodes have different colours. Associate numbers with all nodes
* Alternate updating these numbers. The Factors get updated by products of terms and the Variables get updated by sums of terms.

*In Practice* We have made some observations (e.g. characters) and we want to figure out the marginal probabilities in the graphical model (e.g. the word someone was trying to type). Finding the full joint distribution is too hard of problem for graphical models 

* We associate a function f(x<sub>i</sub>, x<sub>j</sub>) with the factor between x_<sub>i</sub> and x<sub>j</sub>.
* Hence we can say P(x<sub>i</sub>, ...x<sub>n</sub>) = &#928;<sub>j</sub> f <sub>j</sub>(x<sub>a(j)</sub>, x<sub>b(j)</sub>).
* Update the factors with a message called v. v is a message from a variable x<sub>n</sub> to x<sub>m</sub> and it represents the conditional probability P(x<sub>m</sub>| all the children of n)


Problems
--------
With a tree graph, the product-sum algorithm will converge. However, with a chain of loop like structure old information will get amplified. If chains are long or there is some sort of attenuation this is not really important, but if the chains are short the probabilities you get will be wrong.  

[Boltzmann Machine](https://en.wikipedia.org/wiki/Boltzmann_machine)
====================================================================
*Problem* Given the structure and lots of samples from Graphical models, can we figure out the relationships between them? This is a learning problem. 

From Boltzmann Machine we will deal with binary variables. The graph is separated into 2 parts, the hidden variables and visible variables. The links in the graph encode a complicated probability distribution. The hidden part is supporting structure for the visible.

Let E=Σ<sub>i<j</sub>s<sub>i</sub> s<sub>j</sub> w<sub>ij</sub>.

Let α be some configuration of the system. 
P(α) is proportional to e<sup>-Eα/t</sup>

Pick s<sub>i</sub> and consider it changing its state. 

Calculate E<sub>si = 1</sub> and E<sub>si = 0</sub>

<!-- Some formulas go here --> 

<!-- some graphs go here --> 

The parameter T can be viewed as temperature 

A High T gives: 

<!-- graph goes here -->

A Low T gives 

<!-- graphs goes here -->

let α be a configuration of the visible states and β be a configuration of hidden states 

<!-- Some formulas go here -->

We want to calculate: 

<!-- Some formulas go here -->
