20/10/2015
> (ɛI + < x <sup>T</sup>x> w) = < xy<sup>t</sup>>

> (ɛI + < x <sup>T</sup>x> w) = < xy<sup>t</sup>>

GRAPH - ML Studied
#SVM
Last Lecture: max margin examples(? - lookup wiki)
Soft margin

Problem based on linear classification
Margin straightforward to calculate in linear case but not when the problem's nonlinear (?)

GRAPH

##Kernel Trick(Move to higher-dimensional space(?))
MATH<pre>φ: ℝ<sup>10<sup>6</sup></sup>⟼ ℝ<sup>10<sup>100</sup></sup></pre>
MATH![Kernel Function](https://upload.wikimedia.org/math/9/c/b/9cbd072b356b4cb62afceef088c751dd.png)

Intractable - heard to calculate by itself

Analogy - Think of it as a GPU where you can hold input vector (not allowed touch it in GPU)

##Kernalise the Algorithm
Instead of operating in input space - change x's to φ(x<sup>i</sup>)
MATH penetration variables(penetrate margins)
<pre>
Minimise<sub>(α,θ,ξ)</sub> ||ω||<sup>2</sup> + cΣ<sub>i</sub> (ξ<sub>i</sub>)
Subject to:
y<sup>(i)</sup>(ω·x<sup>(i)</sup> - θ) ≥ 1 - ξ<sub>i</sub>
And: ξ<sub>i</sub> ≥ 0
</pre>
MATH
MATH
MATH
MATH

α: dual representation of the vector
ω: primal/single representation of the vector

ξ<sub>i</sub>: slack parameter

*Nobody ever solves quadratic programming problems with primal- always use dual representation

##Kernel Function (Suggestions)
<b>Mercer's Theorem</b>
Suppose K is a continuous symmetricK(u, v) = K(v, u). non-negative definite kernel.![non-negative deifinitive kernel](https://upload.wikimedia.org/math/7/9/e/79e0f0a14643312d46347a004e688ef7.png)
for all finite sequences of points x<sub>1</sub>, ..., x<sub>n</sub> of [a, b] and all choices of real numbers c1, ..., cn
MATH
MATH
MATH

*When we used quadratic kernel we dropped all linear terms
MATH
*No arguments about using kernel functions as you can always use them both (add them up)
MATH
MATH

##Kernel Example which may work for images (finding similarities(?))
MATH - Gaussian Kernel
Fee for using this: Goes to infinite dimensions

MATH
kernels: measure similarity
##Kernel Function applications
What editing operation do I have to do to make two pieces of text the same?

*When we finished with optimisation
Problem: there were no x's left, just i's,j's

When we want to embed SVM in your system (sneeze function in camera)
MATH
MATH
MATH

Just download into camera the inputs from training set
Only need to store support vectors of people sneezing
e.g. 200/100 training cases

Popular kernels: quite robust
-Reasons why people like SVM instead

*Despite beautiful math (Kercher's...)
SVM depends on number of support vectors (cool property) - work in higher-dimensional space as only looks at subset of vectors)
Criticisim: checking if
MATH
-glorified template matching

Advantage: Turn key etc.
