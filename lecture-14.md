Coupled Hidden Markov Model
=============

<HMM image>

HMM can have discrete values

No efficient algorithm is known for the Coupled HMM, 
there is known algorithms for single HMM

Multiscale Quadtree
=============

-Images have multiscale properties, i.e. the statically probability of the distribution remains the same when viewing the image when zoomed in or viewing it full sized.

Stereo fuse (Stereo vision) - Using two camera that are close side-by-side position for depth perception, gives uncertainly which is important, e.g. we know where a ball might land after thrown but can't tell for sure where it'll land but the general area, i.e. a gust of wind could change the trajectory at the last second.

Encoding on noisy channel

m > n
<pre>
   m                   n (message)
 |                  | | 0 |
 |                  | | 1 |
 |                  | | 1 |
 |                  | | 0 |
 |                  | | 1 |
 |                  | | 1 |
 |                  | 
 |                  |

 | Parody (XOR of all bits)|

</pre>

Message matrix < m > | n - message ^ 
Parody (XOR of all bits)

Best matrix for encoding messages on a noisy channel 

<pre>
   m                   n (message)
 |                  | | 0 |
 |   sparse,        | | 1 |
 |   random,        | | 1 |
 |   3 1's per row  | | 0 |
 |   max            | | 1 |
 |                  | | 1 |
 |                  |
 |                  |
</pre>

Above matrix m is the only known one to approach Shannon’s limit of transmission


A Graphical model allows us to use inference to get x

 ( x1 ) → ( x2 ) → ( x3 ) ...... (  ) → (  )
     ↓            ↓             ↓               ↓        ↓
 ( y1 )   ( y2 )    ( y3 )        (  )   (  )


These tables have P(V = V<sub>i</sub> | A<sub>i</sub> = a<sub>i</sub>, A<sub>2</sub> = a<sub>2</sub> .....)

          #v * #a2 * #a3 * ...... * an 

Coin flip table

| V  | a<sub>1</sub>  | a<sub>2</sub>  |
|---|---|---|
|   | 0 | 0 |
|   | 0 | 1 |
|   | 1 | 0 | 
|   | 1 | 1 | 


directed graphical model -> undirected graphical model
Using energy instead of probability 

given ancestors of node, find node

write byte  read byte

  ( x )  ->  ( y )

P (y | x)

| P(y|x)  | y  | x  |
|---|---|---|
| .9  | 0 | 0 |
| .1  | 1 | 0 |
| .2  | 0 | 1 | 
| .8  | 1 | 1 | 

table for directed model

Energy Model
=============

Pxy
P00 = 0.45
P01 = 0.05
P10 = 0.1
P11 = 0.4

P(X, Y) = P(T|X)PX

P(α) = 1 / z * e - (Eα) / x

set T = 1

log Pα = -log(z) - Eα
Eα = -log(z) - log(Pα)
z = Σα^(e-(Eα)/T)

Pα/Pβ 1/z(e) - (Eα)/T    = e^(-Eα+Eβ) = -Eα + Eβ = log (Pα)/Pβ = log(Pα) - log(Pβ)
      ________________
	1/z(e)-(Eβ)/T

log (P00/P01) = -E00+E01

E01 = E00 + log ( P00/P01 )
