20/10/2015

#Support Vector Machine (SVM)
<b>Last Lecture</b>: Maximum margin problems
* Introduction of soft margin  
When there is mislabelled data; a hyperplane is introduced to cleanly split data and maximise margin distance

* Problem based on linear classification  
Margin is straightforward to calculate in linear case but not when the problem's non-linear:

![Non-linear margin] (http://www.blaenkdenum.com/images/notes/machine-learning/support-vector-machines/x-space-non-linear-svm.png)

##Kernel Trick
* Map observations to a higher dimensional space using a <b>Kernel Function</b>:  
![Kernel Function](https://upload.wikimedia.org/math/9/c/b/9cbd072b356b4cb62afceef088c751dd.png)  
e.g.  
<pre>φ: ℝ<sup>10<sup>6</sup></sup>⟼ ℝ<sup>10<sup>100</sup></sup></pre>  

* φ(x) - Intractable (heard to calculate by itself)  
  Analogy - GPU input vector which you cannot alter once it is being processed

##Kernelize the Algorithm
* Instead of operating in input space - change x's to φ(x<sup>i</sup>)'s to move to feature space

<b>ω</b>: primal/single representation of the vector  
<b>α</b>: dual representation of the vector  
<b>ξ<sub>i</sub></b>: slack parameter  
ω, θ, ξ - penetration variables (penetrate margins)  
y<sup>(i)</sup> = ±1 for either "yes"/"no" class of data points
<pre>
Minimise<sub>(ω, θ, ξ)</sub>  
              <sup>1</sup>/<sub>2</sub>‖ω‖<sup>2</sup> + cΣ<sub>i</sub>(ξ<sub>i</sub>)
Subject to:  
              y<sup>(i)</sup>(ω·x<sup>(i)</sup> - θ) ≥ 1 - ξ<sub>i</sub>
And:  
              ξ<sub>i</sub> ≥ 0
</pre>
Math Breakdown:
<pre> ω= Σ<sub>i</sub>(α<sub>i</sub>y<sup>(i)</sup>φ(x<sup>(i)</sup>)
  
‖ω‖<sup>2</sup> = ω·ω = (Σ<sub>i</sub>(α<sub>i</sub>y<sup>(i)</sup>φ(x<sup>(i)</sup>))·(Σ<sub>j</sub>(α<sub>j</sub>y<sup>(j)</sup>φ(x<sup>(j)</sup>))
    
          = Σ<sub>i, j</sub>(α<sub>i</sub>α<sub>j</sub>y<sup>(i)</sup>y<sup>(j)</sup>(φ(x<sup>(i)</sup>)φ(x<sup>(j)</sup>)))
                
          = Σ<sub>i, j</sub>(α<sub>i</sub>α<sub>j</sub>y<sup>(i)</sup>y<sup>(j)</sup>k(x<sup>(i)</sup>,x<sup>(j)</sup>))
                
          = α<sup>T</sup>(y<sup>(i)</sup>y<sup>(j)</sup>k<sub>i, j</sub>)<sub>i, j</sub>
</pre>

<pre>Substitute ω·φ(x<sup>(i)</sup>)

           = Σ<sub>j</sub>(α<sub>j</sub>y<sup>(j)</sup>φ(x<sup>(j)</sup>)φ(x<sup>(i)</sup>))
          
           = Σ<sub>j</sub>(α<sub>j</sub>y<sup>(j)</sup>k(x<sup>(i)</sup>, x<sup>(j)</sup>))
</pre>
###Kernelized Algorithm
<pre>
Minimise<sub>(α, θ, ξ)</sub>  
              <sup>1</sup>/<sub>2</sub>α<sup>T</sup>(y<sup>(i)</sup>y<sup>(j)</sup>k<sub>i, j</sub>)<sub>i, j</sub> + cΣ<sub>i</sub>(ξ<sub>i</sub>)
Subject to:  
              y<sup>(i)</sup>(Σ<sub>j</sub>(α<sub>j</sub>y<sup>(j)</sup>k(x<sup>(i)</sup>, x<sup>(j)</sup>)) - θ) ≥ 1 - ξ<sub>i</sub>
And:  
              ξ<sub>i</sub> ≥ 0
</pre>

* Dual representation (α) used for quadratic programming problems as opposed to primal representation (ω)

##Kernel Function
####Mercer's Theorem
<b>Pre-condition:</b>  
If k is <i>symmetric:</i>   
<pre>k(u, v) = k(v, u)</pre>
, <i>non-negative definite</i>:  
![non-negative definite kernel] (https://upload.wikimedia.org/math/7/9/e/79e0f0a14643312d46347a004e688ef7.png)  
for all finite sequences of points x<sub>1, ..., </sub> x<sub>n</sub> of [a, b] and all choices of real numbers c<sub>1, ..., </sub> c<sub>n</sub>  
<b>Post-condition:</b>  
<pre>⇒ ∃ φ s.t. k(u, v) = φ(u)·(v)</pre>

<b>Examples:</b>  
Identity Kernel:
<pre> k(u, v) = u·v</pre>  
* takes O(n) work in n-space  

<pre> k(u, v) = (u·v)<sup>2</sup>

          = (Σ<sub>k</sub>(u<sub>k</sub>v<sub>k</sub>))<sup>2</sup>
          
          = (Σ<sub>k</sub>(u<sub>k</sub>v<sub>k</sub>))(Σ<sub>k<sup>'</sup></sub>(u<sub>k<sup>'</sup></sub>v<sub>k<sup>'</sup></sub>))
          
          = Σ<sub>k, k<sup>'</sup></sub>(u<sub>k</sub>u<sub>k<sup>'</sup></sub>)(v<sub>k</sub>v<sub>k<sup>'</sup></sub>)
          
          = Σ<sub>k, k<sup>'</sup></sub>φ(u)<sub>k, k<sup>'</sup></sub>φ(v)<sub>k, k<sup>'</sup></sub>
</pre>

###Polynomial Kernel
For degree-d polynomials, the polynomial kernel is defined as:  
![polynomial kernel] (https://upload.wikimedia.org/math/e/0/e/e0e6e2ac260502f8818fb8c55cec2227.png)  
where x and y are vectors in the input space and c ≥ 0 is a free parameter trading off the influence of higher-order versus lower-order terms in the polynomial.

<pre>φ: ℝ<sup>n</sup>⟼ ℝ<sup>n<sup>p</sup>/≈p!</sup></pre>

* When we used quadratic kernel we dropped all linear terms

* No arguments about which kernel function to use as you can always use them both (add them up)
Example:  

<pre> k(u, v) = (u·v + 1)<sup>2</sup>

        = (Σ<sub>k</sub>u<sub>k</sub>v<sub>k</sub> + 1)(Σ<sub>k<sup>'</sup></sub>u<sub>k<sup>'</sup></sub>v<sub>k<sup>'</sup></sub> + 1)
        
        = Σ<sub>k, k<sup>'</sup></sub>u<sub>k</sub>u<sub>k<sup>'</sup></sub>v<sub>k</sub>v<sub>k<sup>'</sup></sub> + 2Σ<sub>k</sub>u<sub>k</sub>v<sub>k</sub> + 1
</pre>     

##Gaussian Process
* <b>Gaussian Kernel</b>:  
<pre>k(u, v) = e<sup>-d|u-v|<sup>2</sup></sup></pre>
* Can be used to compute similarities between images
* Fee for using this: maps to infinite dimensions

##Kernel Function applications
* Find similarities between two pieces of text

*When we finished the optimisation above:  
Problem: there were no x's left, just i's and j's

When we want to embed SVM in your system (sneeze function in camera):
<pre>ω·φ(x)⩼ θ

Σ(α<sub>i</sub>y<sup>(i)</sup>φ(x<sup>(i)</sup>)·φ(x))
=Σ<sub>(s.t. α<sub>i</sub>≠0)</sub>(α<sub>i</sub>y<sup>(i)</sup>k(x<sup>(i)</sup>, x))

most α<sub>i</sub> are zero!
</pre>

We only need to store the support vectors of people sneezing from the training set  
Only download these into the camera:  
e.g. <sup>200</sup>/<sub>1000</sub> training cases

##SVM Conclusions
Popular kernels: quite robust  
-Reasons why people like SVM instead

<b>Positives:</b> 
* Beautiful Math (Kercher's...)
* SVM depends on number of support vectors  
  - can work in higher-dimensional space as only looks at subset of vectors
* Turn Key  

<b>Criticism:</b>
* Glorified template matching
