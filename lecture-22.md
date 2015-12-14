# Stepping on the Curve

## ROC Curves

[ROC Wiki](https://en.wikipedia.org/wiki/Receiver_operating_characteristic), [ROC Curve](https://www.google.ie/search?q=ROC+curve)

* Became popular during WWII at the invention of radar / sonar.
* Gives signal feedback (approximation as intensity of return + check if it exceeds some threshold).
* The curve is created by plotting the true positive rate (TPR) against the false positive rate (FPR).

![ROC](http://s13.postimg.org/yfwdmgorr/ROC.png) 

* The above is an idea of how these graphs will work. We generally pick samples from above the line. We will never have sample that look this straight. In general we will end up with a curve like this, where the first image comes from taking a slice of the second image:

![ROC Curve](http://s1.postimg.org/c0eckmqzj/ROC1.png)  ![TPR + FNR](http://s21.postimg.org/9fn2d431z/ROC2.png)

* Consider why these graphs might be used. If we're testing for cancer, we want to ensure there are as close to 0 false negatives as possible (as this would mean an incorrect diagnosis) so we could choose a point around the top left.
* We might also be dealing in stocks, in this case, we want to never lose money, but don't care how little money we make at a time, so in this instance we can allow for some false positives.
* Finding the balance for what you need is key.

#####An actual ROC curve:
![ROC Curve Wiki](https://upload.wikimedia.org/wikipedia/commons/6/6b/Roccurves.png)


## Viola-Jones Filter

[Viola Wiki](https://en.wikipedia.org/wiki/Viola%E2%80%93Jones_object_detection_framework), [Viola Paper](http://www.vision.caltech.edu/html-files/EE148-2005-Spring/pprs/viola04ijcv.pdf)

Paul Viola + Michael Jones developed an object detection framework using ROC curves and computer vision. What they developed was a face detector that took a large dataset of faces which were centred + aligned. They used this data set to train a classifier. From this, if an image was fed in to the detector, it would put a box around what it perceived to be "faces". This was one of the earliest instances of a face detector. This is the gold standard face detector.

![Viola Jones Example](http://s28.postimg.org/oh6ryxisd/Viola.png)

As we can see, it was a decent attempt, despite the football apparently being a face and some others being missed! How does the underlying code work and what does this have to do with ROC curves? Idea:

* Make a crappy detector with a low false negative rate but high false positive rate.
* Essentially all "faces" this detector finds will be guaranteed to be complete. It will find lot's of other non-faces too of course.
* We first apply this to the image because it is cheap and easy (otherwise we would need to take every possible 32x32 block of pixels in the image and see if it was a face)
* Then we can scan the gold standard algorithm over the areas marked as faces to cut out non-faces in most cases.
* This cuts out a lot of redundant work, saves a lot of time and cost and generally gives strong results!
