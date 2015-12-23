## Reinforcement Learning

https://en.wikipedia.org/wiki/Reinforcement_learning

In supervised learning we have assumed that there is a target output value for each input value. However, in many situations, there is less detailed information available. In extreme situations, there is only a single bit of information after a long sequence of inputs telling whether the output is right or wrong. Reinforcement learning is one method developed to deal with such situations.

Reinforcement learning is an area of machine learning concerned with how software agents ought to take actions in an environment (world) so as to maximize some notion of cumulative reward. The agent (for example, it could be a robot of some sort) has to try and figure out the world and perform actions in order to get rewards (and minimise any penalties). Actions one performs now may affect the state of the world, and therefore any actions in the future as well. Reinforcement learning differs from standard supervised learning in that correct input/output pairs are never presented, nor sub-optimal actions explicitly corrected. Further, there is a focus on on-line performance, which involves finding a balance between exploration (of uncharted territory) and exploitation (of current knowledge). This is known as the exploration vs. exploitation trade-off.

The basic reinforcement learning model consists of:

1. a set of environment states S;
2. a set of actions A;
3. rules of transitioning between states;
4. rules that determine the reward of a transition
5. rules that describe what the agent observes.

A policy pi maps a State to an Action -> pi : S -> A

Temporal Credit Assignment Problem:

A network designed to play chess would receive a reinforcement signal (win or lose) after a long sequence of moves. The question that arises is: How do we assign credit or blame individually to each move in a sequence that leads to an eventual victory or loss? This is called the temporal credit assignment problem. With it, one basically wants to find out what action caused the reward/penalty.

## The Method of Temporal Differences

https://en.wikipedia.org/wiki/Temporal_difference_learning

Temporal difference (TD) learning is a prediction-based machine learning method. It has primarily been used for the reinforcement learning problem, and is said to be "a combination of Monte Carlo ideas and dynamic programming (DP) ideas."

As a prediction method, TD learning considers that subsequent predictions are often correlated in some sense. In standard supervised predictive learning, one learns only from actually observed values: A prediction is made, and when the observation is available, the prediction is adjusted to better match the observation

The following is an example of when one could use Temporal difference learning:

Suppose you wishes to predict the weather for Saturday, and you have some model that predicts Saturday's weather, given the weather of each day in the week. In the standard case, you would wait until Saturday and then adjust all your models. However, when it is, for example, Friday, you should have a pretty good idea of what the weather would be on Saturday - and thus be able to change, say, Monday's model before Saturday arrives.

## TD Gammon

https://en.wikipedia.org/wiki/TD-Gammon

One can train an artificial neural net with a form of temporal-difference learning in order for it to be able to play Backgammon. 

## *The* RL Book

http://www.cs.ualberta.ca/~sutton/book/the-book.html

## Nice Dated RL Survey

https://www.cs.cmu.edu/afs/cs/project/jair/pub/volume4/kaelbling96a-html/rl-survey.html

## Policy-Value Iteration

https://en.wikipedia.org/wiki/Markov_decision_process

Markov decision processes (MDPs) provide a mathematical framework for modelling decision making in situations where outcomes are partly random and partly under the control of a decision maker. MDPs are useful for studying a wide range of optimization problems solved via reinforcement learning. 

Value iteration and Policy iteration are two notable variants of MDPs. 

## Q-Learning

https://en.wikipedia.org/wiki/Q-learning

Q-learning is a model-free reinforcement learning technique. Specifically, Q-learning can be used to find an optimal action-selection policy for any given (finite) Markov decision process (MDP). It works by learning an action-value function that ultimately gives the expected utility of taking a given action in a given state and following the optimal policy thereafter. A policy is a rule that the agent follows in selecting actions, given the state it is in. When such an action-value function is learned, the optimal policy can be constructed by simply selecting the action with the highest value in each state. One of the strengths of Q-learning is that it is able to compare the expected utility of the available actions without requiring a model of the environment. Additionally, Q-learning can handle problems with stochastic transitions and rewards, without requiring any adaptations. It has been proven that for any finite MDP, Q-learning eventually finds an optimal policy, in the sense that the expected value of the total reward return over all successive steps, starting from the current state, is the maximum achievable.
