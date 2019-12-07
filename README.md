# Software-Carpentry-Final-Project


# Description
Repository for the final project for SOftware Carpentry. I have built an app (one complete, one incomplete) in Android Studio using Flutter. The language which I used was Dart.

# Contents
This repository contains the following directores
1. Dart Learning - 
2. Flutter Learning
3. Faraday v1
4. Beacon 4 stable

# Dart and FLutter
I wanted to make something which I personally could use. The best bet was an app / website. I decided to make an android app. 

I decided to break away from Python since I found the kivy and beeware packages of python for app development too cumbersome. I did some research and came to a conclusion that it is better to code the app in Dart using FLutter and Android Studio. FLutter is a package by google through which an app on all platforms can be deployed using a single codebase. Dart is a language very similar to Java. Since I did not have any background in either Java or Dart, I learnt Dart using the Freecodecamp. FLutter from youtube videos (Academind). I also bought a course by Angela Yu on Flutter (on 30 November)

# Faraday v1

## Motivation
While working in the medical campus, I came across a very pesky problem. I deal with mice and tumors. We have to periodically measure the height, width of the tumor (once ot twice a week). We also weight the tumor once harvested. Although the job is quite simple, 2 people are needed to perform it. One to measure and one to note down the data. Also, the tumors after harvesting are weighed on a weighing scale which gives its input in a printed statement. We have to transfer the data to excel later. DOing this for 20 mice, every week is a painful exercise.

I wanted to make an application which would simplify this process and would eliminiate the need for the 2nd person. An app, that would take the data using voice recognition in a table without much human intervention.

Named it Faraday after the scientist who started as a lab assistant.

I used the speech to text plugin, a relatively new plugin (Published on Nov 2019) to recognize the data as the user speaks.

## How to use the app
Download the apk. The iOS version of the app is not available as I need to create the macId. The codebase will be the same.
Transfer it to the mobile phone and install.

There is only one screen, to keep things simple. Input the number of mice in the textfield (the full dash at the top)
When you click on the blue button, the app will start listening. Say a number and it will appear on the blue button.

![Faraday Screenshot, in action](https://github.com/sherlinci/Software-Carpentry-Final-Project/blob/master/faraday%20screenshot%201.jpeg)

## How to download and clone the Faraday v1 repository / Check the code
I worked on the main.dart file. In the faraday v1, go to lib directory. THere is the main.dart file. 

To open using android studio, clone the faraday v1 repository. Open it using android studio. (You will need flutter and dart sdk installed)

## Further work
The remaining task to do is: 
1) Storing the app data to a database (I found this extremely complex for flutter, particularly because I don't have much exposure to the numerous classes and objects. even storing an int value to a file is a 10 lines code!) Saving multiple files (sharedPreferences / Database using SQL)
2) Making it completely voice activated. So that no manually touching the buttons is not required. You can just say mouse 1 and height, it will automatically change the corresponding field.
3) Make the application as generic as possible, so that anyone who wants to record data on the go for any experiment can do it.
4) String and ints and doubles. The data which is stored is string. Not int.

# Beacon

## Motivation
This was my primary aim. But due to some technical issues which could not be resolved, I had to put this on hold. This is a smart SOS app. If a person cannot call 911 / ambulance in case of security / medical emergency (he is incapacitated / muggers...), all the person has to do is, open the app and click on the Medical / Security buttons. A signal will be sent to the nearest police / doctor. They will get a tracking number and will be able to track the live location of the victim. We can set signals like, 3 time press the button and the app will open so that the victim can do it without even looking at the phone.

![Beacon screenshot 1](https://github.com/sherlinci/Software-Carpentry-Final-Project/blob/master/beacon%20screenshot%201.png)
![beacon screenshot 2](https://github.com/sherlinci/Software-Carpentry-Final-Project/blob/master/beacon%20screeshot%202.png)

THe buttons are very big, so that anywhere on the screen the victim presses, a button will be pressed. In case of an emergency they don't have to search for a button.

## Problems
I made the basic multi-screen layout of the app, connected them using buttons. Only thing remaining was connecting the flutter app to the firebase cloud. Upon adding the google's json file, my app level build.gradle file was crashing. Due to which I was not able to continue further. This is a known problem in the programming community.
https://github.com/flutter/flutter/issues/23777
https://stackoverflow.com/questions/51290403/gradle-fails-on-using-flutter-in-android-studio
https://github.com/flutter/flutter/issues/38163
https://stackoverflow.com/questions/55575122/android-studio-cannot-resolve-symbol-gradleexception
https://github.com/flutter/flutter/issues/9867

Even after trying the solutions given above, I was not able to resolve it. Will surely work on this in the near future.

![Issue with the gradle file.](https://github.com/sherlinci/Software-Carpentry-Final-Project/blob/master/beacon%20gradle%20issue.jpg)

# Things learnt

1. Once the basic concepts are clear, most of the work is googling and figuring how things work, dividing a big problem into smaller chunks, solving them individually and finally integrating them.
2. If-else, lists, classes are the common things across all the languages, so it is quite easy to pick things up
3. Classes is Very important. need special emphasis during the learning phase. Need to learn Java / C++ properly to understand these concepts properly.
4. Software Development is simple, bu not easy. Lots of work. Lots. 

# Resources used
1) Flutter documentation
2) Dart documentation
3) Youtube flutter course by Academia
4) Udemy flutter course (not much used) by Angela Yu
5) Stackoverflow
6) Freecodecamp Dart course and other files.
7) Misc medium.com files.

