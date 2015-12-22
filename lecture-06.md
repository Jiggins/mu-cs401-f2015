6/10/2015
Backpropagation Networks in the Wild
====================================

Backpropagation Success Stories
-------------------------------

* PapNet http://www.medscape.com/viewarticle/718182_5 http://www.lightparty.com/Health/Papnet.html
* ALVINN http://papers.nips.cc/paper/95-alvinn-an-autonomous-land-vehicle-in-a-neural-network.pdf http://virtuallab.kar.elf.stuba.sk/robowiki/images/e/e8/Lecture_ALVINN.pdf
* RNN Handwriting Generator https://www.cs.toronto.edu/~graves/handwriting.cgi


#PapNet
* Developed in 1980s
* Computer Vision techniques used to centre cells

* Features were extrapolated manually (colour etc.)  
  A level of suspicion score is returned from the system

* Each returned slide would be separated with score attached

**Last trick:** 120 most significant cellular images (Sorted by level of suspicion) presented to human operator
			
**Usual flaws**:  
  * false positives
  * cell not fully stained
  * antibodies attached to it etc.
  
Humans could decipher these flaws easily
		
##PapNet Success
* Much cheaper and accurate than traditional methods
* First billion-dollar company using Machine Learning
 
##Aside
* Congress created a law to decrease false-negative Pap smear rates
 
#ALVINN (Autonomous Land Vehicle In a Neural Network)
 Push by US military to create autonomous vehicles  
 **Biggest concern:** convoys being attacked
 
**Idea:** First truck driven by person then followed by bots
 
 **First Trials:** take images and try to describe attributes of the image such as _roads_ etc.
 
Big courses were created out in desert for those autonomous vehicles

##Back-Propagation Method
* Dean Pomerleau (while PhD student at CMU)
  Slapped a camera and laser range on the vehicles
* Early days of back-propagation
  
Pomerleau created a network:  
![ALVINN Architecture](https://raw.githubusercontent.com/GooseyGooLay/Machine-Learing-Images/master/ALVINN%20Architecture.PNG)  
*	8 horizontal scans of 30*32 images
	The Range Finder returns distance of vehicle to the objects
	
* System returns what the steering direction should be  
	Trained using Gaussian bump

ALVINN: Shallow architecture (only one layer of hidden units)

**Problem:** Road intensity feedback (Lightness of road compared to background)

###Aside
Similar system used in Mars Rover project?  
Tom Mathis worked on Mars Rover project also
##ALVINN
* **One trick:** Get training data right  
            	  -Drive vehicle down road correctly once
	
**Problems**  
* Unusual configuration: getting out of parking spot, parallel parking etc.   
                        (Noise on range finder)  
                        (Off angle - not in training set)

##Interpolation vs. Extrapolation
 <pre>"Interpolation - easy, extrapolation - hard"</pre>

![Interpolation/Extrapolation](http://pillars.che.pitt.edu/files/course_12/figures/curve.gif)

* Reason why time-series is hard to create

Pomerleau: made **fake data** - moved road slightly to create new scenarios and train it on those

* Weights can correlate with the colour display from the images

* Inhibited by bright parts on some of the images  
  Excited by others in different areas

* Looks for edges based on contrast of colour in the image  
  Each output is weak evidence (suggestion)  
  "probably a road around this way - evidence for sharp right - evidence against soft left etc."

* Tricky job for person: take all this weighted evidence and making sense of it  

* Vehicle trained to drive on single pathed lane initially  
-Trip from San Fran to Seattle made by the autonomous vehicle  
	(Human exerted control over steering at times needed)

##ALVINN Influence
* **Google cars:** based on this model  
                -new data available like GPS

* **High-end cars:** tiny camera  
                    System: uses above technology to notice if there is imminent crash and then takes control of engine
		                (sees pedestrian etc.)
		                -makes a noise to alert driver

* Single Vehicle Roadway Departure Accidents
  -methodology to decrease these accidents

##Conclusion
* Network Weights Evolve improves after training

One criticism of this style of learning:
* Similar to Black box: hard to figure out what's going on internally  
                        (Will this system drive appropriately during an eclipse?)

#RNN Handwriting Generator
![RNN Handwriting Generator Architecture] (https://raw.githubusercontent.com/GooseyGooLay/Machine-Learing-Images/master/RNN%20Handwriting%20Generator%20Architecture.PNG)

**Recurrent Neural Network** (useful for time-series)

* Output writes with particular style which had been fed in as input  
  -elements of randomness involved

* Network trained on many styles of handwriting
* Style parameter separated at beginning

* Doesn't handle elements not in data set very well


#Training vs. testing (sets)

![Training vs. Testing] (http://i.stack.imgur.com/I7LiT.png)

* Error should go monotonically downwards  
  Only Care about cases which are explicit (minimise one weight's significance and put emphasis on another)

* Validation set should start out with standard error

#Neural Network Halting Problem
* Minimise validation on your training sets

* Optimising rules for small sample set but over time other weights will lose significance when they should
* (**anecdote:** shared interests of people who you are to make happy changes as you suit the needs of a particular sample)

* Particular variables in training set which don't exist overall  
  -leaves us with error
