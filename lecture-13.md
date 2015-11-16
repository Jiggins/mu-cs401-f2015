Mixture Model
=============

#Two iterations of:
*(Data, Assignments) ----m-step----> Model
*(Data, Model)       ----e-step----> Assigments

Hidden Markov Model
===================
*Finite state machines
*Baum-Welsh speech recognition for NSA
*Outputs can be associated with states or transitions
*Bernoulli trial and speech recongnition examples
*π = probability distribution for the start state

#What makes it "hidden"?
*States are hidden - only have the output
*Goals (given output):
  *Reconstruct sequence of states
  *Determine which model produced it (Baye's Rule)

#Problems:
1) (output seq, HMM)  --infer--> sequence of states
2) (output seq, HMM)  --infer--> P(output seq | HMM)
3) (output seq(s))    --infer--> HMM (figure out the parameters of HMM) (EM steps)

#Markov Property
*Probability of the next state is independent of previous states - only depends on the current state.

##Cheat Sheet
*Tables drawn for:
  *Forward algorithm (alpha)
  *Backward algorithm (beta)

 