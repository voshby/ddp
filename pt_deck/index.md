---
title       : The 5-minute Personality Test
subtitle    : Know yourself in 5 minutes
author      : AV
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## How to take this test?

There are 10 questions. For each question, select one choice that best describes you. You must answer at least 5 questions for the program to analyze your personality. For the best result, you are encouraged to answer all 10 questions.

--- .class #id 

## What does all of this mean?

Based on your answers, the program will match you with one of 4 personality types. The program will show you the personality type that reveals the most accurate picture of your natural inclinations. While the result might not 100% accurately describes you, it's a very good predictor of how you will naturally respond in most situations.

--- .class #id 

## The 4 personality types

Type A: Fast-paced, task oriented.

Type B: Fast-paced, people oriented

Type C: Slow-paced, people oriented

Type D: Slow-paced, task oriented

You can read more about your type when you see the result.

--- .class #id 

## Sample calculation of result vector in R code



```r
# Input, results from 10 questions
input <- c("A","B","A","E","C","A","A","D","A","A")
ans <- c(0,0,0,0,0) # initialize vector of answers
for (i in 1:10) {
  ans <- calc(input[i],ans)
  # calc function is hidden to fit on this slide
}

# Vector of answers after calculation
ans
```

```
## [1] 6 1 1 1 1
```
--- .class #id 





