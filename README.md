# Find the Sets! (GyulHap)

![alt text](https://github.com/austin-leung/GyulHap/blob/master/HAP/Image.png?raw=true)

Find the sets by matching trios of boxes where each property is either all the same of all different. For clarification on the rules, read more here: https://puzzles.setgame.com/set/rules_set.htm .
![alt text] (https://github.com/austin-leung/GyulHap/blob/master/HAP/SGH_Set_Explanation.png?raw=true)

To try it out, run HAP/hap.pde with processing.

## Inspiration
Find the Sets! is more commonly known as a Set, a card game in which one matches cards with different shapes and patterns. It's an adaptation that was used as a game in the Korean show The Genius. 

## What it does
It provides an interface for playing the game, including a timer and a score counter. You can select and deselect boxes and it can check if the set of three boxes is valid (and replace them if valid).

## How we built it
The images were created in Geogebra and Photoshop. They were then implemented with Processing (using Java as the foundational language).

## Challenges we ran into
Processing was a difficult language to work with as we were learning it on the run (having prior knowledge of Java). This inexperience caused trouble when trying to implement more difficult elements such as a running timer. 

## Accomplishments that we're proud of
Given our inexperience, moving forward from our text based Java program at the last Stuyhacks to a visual representation is a big step. With the extra time, we were able to produce something which we believe to be fully functional rather than partially. We feel like we did a good job for using Processing for the first time.

## What we learned
Computer science isn't as daunting as it seems and it's okay to go out of our comfort zones at times. Such a lengthy hackathon provided us this opportunity. It just comes to show that with time, anything is possible.

## What's next for Gyul! Hap!
There are some minor bugs that are listed in the Github readme file. The next step would obviously be to make this into a web application, but we aren't quite sure if Processing can even be used for something web based. Other additions we could do besides that is adding a cleaner interface, displaying the number of sets available, high score, and a score for each set based on the time elapsed since the prior set was found. Lastly, we can make it more aesthetically pleasing.


Bugs:

* The timer and score flash repeatedly
* Sometimes clicking on boxes is unresponsive (possibly because of lag due to complexity of code)
* Doesn't show third box as selected
* The area for clicking on a box is just a centered circle and not in the entire shape of the box



