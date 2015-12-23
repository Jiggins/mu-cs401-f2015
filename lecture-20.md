Independent Component Analysis 
=======================
[Wikipedia Article on ICA](https://en.wikipedia.org/wiki/Independent_component_analysis)

####Example:
We have a group of people betting on a game. Our objective is to minimise the loss we make while betting.

* There are multiple rounds of betting.
* You must bet on every game.
* One person in that group is an expert and is always correct.

**Solution:** Find the expert as quickly as possible.

x<sub>i</sub>(t) = prediction of the i<sup>th</sup> person in game t
w<sub>i</sub>(t) = (boolean value) whether we listen to the i<sup>th</sup> person's advice
z(t) = the winner.

Idea: Bet on the side which most people bet on. Only consider the bets of those people who have always been correct up to this point.
 > y(t) = [Σ<sub>i</sub> (w<sub>i</sub>(t) x<sub>i</sub>(t)) > 1/2 Σ<sub>i</sub> w<sub>i</sub>(t)]

Update the weight associated with each person (only those who have always been right before this game). If they guessed incorrectly in this game set their weight to 0 else 1. 
 > w<sub>i</sub>(t+1) = w<sub>i</sub>(t) [ x<sub>i</sub>(t) = z(t)]

Regret: How much we will lose before we find the expert. 
Regret <= log<sub>2</sub>n 

**Update Problem:** No one is always correct but some people are better than others at guessing.

w<sub>i</sub>(t) = weight associated with the i<sup>th</sup> person’s advice.

Idea: Reduce the weight an individual has by 1/2 if they bet incorrectly. Keep their weight the same if they guess correctly.

> w<sub>i</sub>(t+1) = w<sub>i</sub>(t) (1/2 [x<sub>i</sub>(t) = z(t)] + 1/2)
