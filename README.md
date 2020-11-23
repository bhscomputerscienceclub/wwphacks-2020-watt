# Wildfire Calculator

A calculator that outputs the relative likelihood of a wildfire happening in your location.
 
More details at https://devpost.com/software/wildfire-calculator
Download the apk at https://github.com/bhscomputerscienceclub/wwphacks-2020-watt/releases  
Video demonstration: https://www.youtube.com/watch?v=AD9Ab8svXQY

By:
- Kai Zheng @kaiz715
- Jack Miller @guywithhat1
- Lauren Clar @Bwlclar
- Kimia Adabi @Kimia Adabi
    
[Link to the Slideshow](https://docs.google.com/presentation/d/1RYU99nsTblE4QBz3qIqHiV0xwiNiklOckr8CPXtm_F4/edit?usp=sharing)


## Inspiration
We were inspired to build this app because of the recent severe and intense wildfires in California and Oregon. We wanted people to do their part in preventing and preparing for these wildfires. We believe that by knowing the risk of wildfires of your particular area, you will be able to more accurately judge how and what to prepare for.

## What it does
This app gives you the relative likelihood of a wildfire happening in your area (1 is least likely, 100 is most likely). It also gives you instructions on how to prepare for a wildfire and how you can do your part in preventing a wildfire.

## How I built it
We used a location API and fed the location into a weather API and land cover API in order to get values such as vegetation density, wind, temperature, humidity. Temperature, Humidity, Wind Speed, and Vegetation were all taken into account to make the Wildfire Calculation. We then fed these values into an algorithm that calculates the relative likelihood of a wildfire happening in your area. A linear regression tool was used to form an equation representative of the percent vegetation’s effects on the likelihood of a wildfire starting. All four equations were adjusted to a scale of 0-100, where the lowest possible value for each variable got a score of 0 and the greatest possible value for each variable got a score of 100. All four scores were then averaged together equally to get the final calculation.

## Challenges I ran into
Badly formatted APIs, figuring out async applications, confusing flutter stuff.

## Accomplishments that I'm proud of
we figured out how to use rest APIs, dart async, how to make multiple pages in flutter.

## What I learned
how to use rest APIs, flutter async, how to make multiple pages in flutter.

## What's next for Wildfire Calculator
Optimizing the algorithm
    
