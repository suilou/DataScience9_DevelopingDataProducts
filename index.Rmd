---
title       : "Moving Average Plot of S&P500 (6/22/2006-6/22/2016)"
subtitle    : Data Science Course#9 Developing Data Products Course Project
author      : SH
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Overview

This is a course project aiming at learning shiny applications. Data set of stock S&P500 index was used for the project (data source URL https://fred.stlouisfed.org/series/SP500/downloaddata, last accessed on June 23, 2016). In the application, a moving average line is plotted alongside with the raw time series. By moving the slider, user can control the size of the moving window (default to 60 days) up to a year.

--- .class #1 

## Motivation

This application is for fulfilling the course project requirement. Educationwise, it visualizes the concept of a simple smoothing technique called moving average, which smooths out short term noise at various extent depending on the window size (length).

--- .class #2

## Instruction

Move the slider to see how the moving average line changes with the window size.

--- .class #3

## Key Points

The movement of the first point of the moving average line gives us an idea how it is calculated (i.e., averaging of the previous n number of raw data points, where n is the window size). Further, a small window (by sliding to the left) would produce a line that is close to the raw data but is less smooth compare to larger windows. In contrast, a large window would smooth out a large amount of short-term noise. Also note that the moving average trend lags the raw data. 

--- .class #4

## App Layout

![layoutImg](layeroutImg.PNG)




