How to sample a Graphical Model
===============================

The Product-Sum algorithm is an algorithm for computing for sampling a graphical model. It works well if the graph has a tree like structure, but in other situations it isn't. It is sometimes called a message passing algorithm. 

* Add in extra nodes into your graph called "factors" in the middle of each arrow. (The original nodes are called variables). Also you can drop the directness of the graph.
![graph](https://raw.githubusercontent.com/barak/mu-cs401-f2015/master/images/lecture-17/graph-1.png)
* This is now a bipartite graph (i.e. one which can be coloured with only 2 colours and all adjacent nodes have different colours. Associate numbers with all nodes. 
![bipartite graph](https://raw.githubusercontent.com/barak/mu-cs401-f2015/master/images/lecture-17/bipartite_graph.png)

* Alternate updating these numbers. The Factors get updated by products of terms and the Variables get updated by sums of terms.

*In Practice* We have made some observations (e.g. characters) and we want to figure out the marginal probabilities in the graphical model (e.g. the word someone was trying to type). Finding the full joint distribution is too hard of problem for graphical models 

* We associate a function f(x<sub>i</sub>, x<sub>j</sub>) with the factor between x_<sub>i</sub> and x<sub>j</sub>.
* Hence we can say P(x<sub>i</sub>,...x<sub>n</sub>)= &#928;<sub>j</sub> f  <sub>j</sub>(x<sub>a(j)</sub>,x<sub>b(j)</sub>).
* Update the factors with a message called v. v is a message from a variable x<sub>n</sub> to x<sub>m</sub> and it represents the conditional probability P(x<sub>m</sub>| all the children of n)


Problems
--------
With a tree graph, the product-sum algorithm will converge. However with a chain of loop like structure old information will get amplified. If chains are long or there is some sort of attenuation this is not really important, but if the chains are short the probabilities you get will be wrong. 
Tree structure: 
![tree graph](https://raw.githubusercontent.com/barak/mu-cs401-f2015/master/images/lecture-17/tree.png)
chain structure
![cahin graph](https://raw.githubusercontent.com/barak/mu-cs401-f2015/master/images/lecture-17/chain.png)

[Boltzmann Machine](https://en.wikipedia.org/wiki/Boltzmann_machine)
====================================================================
*Problem* Given the structure and lots of samples from Graphical models, can we figure out the relationships between them? This is a learning problem. 
![boltzmann_machine](https://raw.githubusercontent.com/barak/mu-cs401-f2015/master/images/lecture-17/boltzman_machine.png)

From Boltzmann Machine we will deal with binary variables. The graph is separated into 2 parts, the hidden variables and visible variables. The links in the graph encode a complicated probability distribution. The hidden part is supporting structure for the visible.
![](https://raw.githubusercontent.com/barak/mu-cs401-f2015/master/images/lecture-17/boltzmann2.png)
![Energy](https://raw.githubusercontent.com/barak/mu-cs401-f2015/master/images/lecture-17/E-1.png)

Let α be some configuration of the system. 
P(α) is proportional to e<sup>-Eα/t</sup>

Pick s<sub>i</sub> and consider it changing its state. 

Calculate E<sub>si=1</sub> and E<sub>si=0</sub>

<!-- Some formulas go here  --> 
![formula for probability](https://raw.githubusercontent.com/barak/mu-cs401-f2015/master/images/lecture-17/prob-1.png)
![delta E](https://raw.githubusercontent.com/barak/mu-cs401-f2015/master/images/lecture-17/deltaE-1.png)

![graph of E](https://raw.githubusercontent.com/barak/mu-cs401-f2015/master/images/lecture-17/Egraph1.png)

The parameter T can be viewed as temperature 

A High T gives: 

![high temperature](https://raw.githubusercontent.com/barak/mu-cs401-f2015/master/images/lecture-17/Egraph2.png)

A Low T gives 

![low temperature](https://raw.githubusercontent.com/barak/mu-cs401-f2015/master/images/lecture-17/Egraph3.png)

let α be a configuration of the visible states and β be a confuguration of hidden states 

![formula for G](https://raw.githubusercontent.com/barak/mu-cs401-f2015/master/images/lecture-17/formula-1.png)

We want to calculate: 


![formula for derivative of G](https://raw.githubusercontent.com/barak/mu-cs401-f2015/master/images/lecture-17/formula2-1.png)
