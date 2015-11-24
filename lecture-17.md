How To sample a Graphical Model
==========

The Product-Sum algorithm is an algorithm for computing for sampling a graphical model. It works well if the graph has a tree like structure, but in other situations it isn't. It is sometimes called a message passing algorithm. 

* Add in extra nodes into your graph called "factors" in the middle of each arrow. (The original nodes are called variables). Also you can drop the directness of the graph
* This is now a bipartite graph (i.e. one which can be coloured with only 2 colours and all adjacent nodes have different colours. Associate numbers with all nodes
* Alternate updating these numbers. The Factors get updated by products of terms and the Variables get updated by  sums of terms.

*In Practice* We have made some observations (e.g. characters) and we want to figure out the marginal probabilities in the graphical model  (e.g. the word someone was trying to type). Finding the full joint distribution is too hard of problem for graphical models 

