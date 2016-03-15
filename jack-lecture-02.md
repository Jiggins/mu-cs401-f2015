Supervised Learning
===================

```
                 +--------------+----------------------------+                                
                 | Input        |                            |                                
                 +-------------------------------------------+                                
                 |              |                            |                                
      +--------> |  O           |                            |                                
                 |              |                            +-------------->    ŷⁱ          
Input xⁱ         |  O           |                            |                                
                 |              |                +-----------+               Output            
                 |  O           |                |           |                                
                 |              |                |  Target   |                                
                 |              |                |           |                                
                 |              |                +-----------+                                
                 |              |                            |                                
                 |              |                            |                                
                 |              |                            |                                
                 |              |                            | <------------+    yⁱ           
                 |              |             +--------------|                                
                 |              |             | Learn button |             Expected Output    
                 +-------------------------------------------+                                
                 |              |                            |       E = error over entire set
                 |              |                            |                                
                 |              |                            |         = 1/m ΣEⁱ              
                 |              |                            |                                
                 |              |                            |                                
                 +--------------+----------------------------+                                
```

Target objects
--------------

binary target
- y ∈ {0,1}
- y ∈ {-1, +1} = ±1


ŷ = sign(Σwᵢ xᵢ - θ)

where:
- theta is the threshold
- wᵢ, is the weight
- xᵢ is the input

### 'Learn button'
If output is correct - do nothing

| ŷ   | y   | do                     |
| :-: | :-: | :-:                    |
| +1  | +1  | -                      |
| -1  | -1  | -                      |
| -1  | +1  | Change w to make Z > 0  w(t+1) = w(t) + δx |
| +1  | -1  | Change w to make Z < 0 |

(w + δx) · x = 0
w · x + δ||x||² = 0
δ = (-w·x / ||x||² + d)((y - ŷ)/2)

#### Input space
x ∈ Rⁿ
```
       +                  +                        
   x₂  |                  |  input                 
       |                  |                        
       |                  v                        
       |                  x                        
       |                                           
       |                                           
       |                                           
       |                                           
       |                                           
       |                                           
       |                                           
+-------------------------------------------------+
       |    x₁                                     
       |                                           
       |                                           
       |                                           
       +                                           
```

Getting the dot product of w will result in ±1 at a right angle to w⃗.
The dot product of w⃗ produces a plane that we can rotate to
adjust w⃗ to get the deired output


#### Weight space
w ∈ Rⁿ
```
       +                  +                        
   w₂  |                  |  Setting of knobs                 
       |                  |                        
       |                  v                        
       |                  w                        
       |                                           
       |                                           
       |                                           
       |                                           
       |                                           
       |                                           
       |                                           
+-------------------------------------------------+
       |    w₁                                     
       |                                           
       |                                           
       |                                           
       +                                           
```



