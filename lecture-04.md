# Calculating the gradient 

Numerical differentiation
dE/dw = (E(w + hei) - E(w)) / h

where h = 1/10^9

Efficiency - gradient has m components, so you would have to calculate the above m times. 

Time complexity - O(cal. E).O(cal. m) - It is not efficient

Working with floating point numbers:

1. do not add very small and large numbers.
2. do not subtract numbers of similar sizes.

The above method violates both these rules.

## Back Propogation
Space: Takes up a lot of space.

Operation Count: For each primitive function the derivitive must be calculated. At worst this will be a small constant vector more work.

Exact: It is exact up to floating point issues.

See Images/lecture-04 for descriptions of back propogation with unary and binary functions and functions which have one input and two outputs.

## Disjoint Networks
Have a series of networks computing the same problem. If they are all making the same predictions, the probabilty they are getting the correct result is higher then if they are making difference predictions.
