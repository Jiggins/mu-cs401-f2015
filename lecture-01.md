CS401, Machine Learning
=======================
 
Three types of machine learning
-------------------------------

* Supervised learning (regression)
* Unsupervised learning (figure out structure, data mining)
* Reinforcement learning

Wellsprings of Machine Learning
-------------------------------

* Making computers do things (automatic programming)
* Statistics (making inferences from data)
* Neuroscience and psychology and cognitive science
* Information theory
* Physics (especially thermodynamics)

Think of a baby, that learns and takes in data constantly

In the beginning
----------------

In the dawn of the computer age, computers had poor languages, severe limitations, and high hopes and ambitions. An example problem was translating Russian to English or vice versa. People sat down with Russian-English dictionaries and attempted to write  a program that would do it. Another example would be telling a computer to identify a tank in a photograph, or even translate a scanned page of text from a bitmap to text. People are good at these jobs, and computers are not. 

An example to think of would be a big box, with lots and lots of knobs on it. These knobs don’t have set positions; they rotate freely. If people were to spend years trying to get these knobs in the correct position, such that they do something we want, they may never get it to work. Machine learning would enable us to do it automatically. 

Supervised Learning
===================

This is supervised learning, or regression: the task of inferring a function from labeled training data.

Example: Tank recognition in an image

data
----

input   | desired output
-----   | --------------
image 1 | yes
...     | ...
image M | no

Image → [Machine] → Classification, class label, or probability

How does regression work? 
-------------------------

If we call each image a vector (that is, 3 2x2 RGB arrays), then

inputs → desired outputs

x(i) → y(i)

We can call all the settings of all the knobs on our theoretical machine w, with w being a vector (or data structure in code).

x → Machine → ŷ

ŷ = f(x;w)

E = (1/m) sum_i=0..(m-1) (1/2) || f(x(i);w) - y(i) ||^2

Linear Regression
-----------------

f(x;w) = W x

This is linear regression, a special case of regression analysis, which tries to explain the relationship between a dependent variable and one or more explanatory variables.

Examples of machine learning in everyday applications include

* predicting housing prices
* language translation
* face detection in cameras
* voice recognition

Unsupervised Learning
=====================

Another form of machine learning is unsupervised learning, the objective being to try to find hidden structure in unlabeled data. Since the examples given to the machine are unlabeled, there is no error or reward signal to evaluate a potential solution. 

Clouds (i.e., Amazon, Google, etc.) devote a lot more cycles to unsupervised learning than to other forms of machine learning, as a lot of unlabeled data is freely available to them, via an internal database, via data collected by a spider trawling the web, or even via shopping trends. 

Reinforcement Learning
======================

The third, and final type of machine learning is reinforcement learning. This is the most “biological” of the types, inspired by behaviorist psychology, concerned with how software agents ought to take actions in an environment so as to maximize some notion of cumulative reward. That is to say, the machine is put into an environment and is given “rewards” for getting things right. 

Reinforcement learning subtypes:
--------------------------------

* Without time (“bandit” problem -  the problem a gambler faces at a row of slot machines ("one-armed bandits"), when deciding which machines to play, how many times to play each machine and in which order to play them.)

* With time (credit assignment - there are a number of agents and a number of tasks. Any agent can be assigned to perform any task, incurring some cost that may vary depending on the agent-task assignment. It is required to perform all tasks by assigning exactly one agent to each task and exactly one task to each agent in such a way that the total cost of the assignment is minimized.)

Hybrid
======

There exist hybrid systems, which combine two or more of the three above. An example of a hybrid system would be IBM’s translation system attempts early on. They treated language translation as a machine learning problem, trying to learn the properties of a communication channel and convert it. To translate from French to English and vice versa they used French parliamentary proceedings as their data set, as they are made available in both languages. 

Assignment:
===========

* Soon we'll get an assignment.
* Grade each others' (double blind) to make a sparse matrix.
* Use this as a dataset for some interesting problems.
