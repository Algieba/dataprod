---
title       : Shiny-based Outlier Detection 
subtitle    : Project for Coursera Data Products Class 
author      : Andy Scholand
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Outlier Detection

Removing outliers is an important part of data analysis.

Outliers may arise from a different statistical distribution than the one generating the majority of data.

There are numerous approaches to finding outliers.

--- .class #id 

## Tukey Boxplot Outlier Detection

John Tukey developed a method of outlier detection used in the boxplot.

It identifies both values "outside" and "far outside" the sample distribution, based on the first ($Q_1$) and third ($Q_3$) quartiles of the data.

$b_{\mathrm{upper}} = Q_3 + s*(Q_3 - Q_1)$

Any value in the data above $b_{\mathrm{upper}}$ is considered an outlier.

Tukey recommended values of $1.5$ and $3.0$ for $s$ to construct the outside and far outside boundaries. 

--- .class #id 

## Outlier Detection in the Exponential Distribution

An exponential distribution is a continuous distribution.  It is often used to represent the time between rare events.  It is parameterized by a single parameter, $\lambda$.

The Tukey method of outlier detection flags the same proportion of the distribution as extreme regardless of the value of the $\lambda$ parameter.

Experiment with various values of $\lambda$ for the same value of $s$.  Observe the proportion of data classified as outlier does not change (sampling noise may introduce small fluctuations)

https://andyscholand.shinyapps.io/exponential/

--- .class #id 

## Outlier Detection in the Gamma Distribution

A Gamma distribution is a continuous distribution parameterized by two parameters, the shape $\alpha$ and the scale $\beta$.  Different values of $\alpha$ and $\beta$ change the fundamental shape of the distribution.

Because this distribution changes shape as its parameters vary, the Tukey method of outlier detection flags differing proportions of the gamma distribution as extreme as $\alpha$ and $\beta$ vary.

Experiment with various values of $\alpha$ and $\beta$ for the same value of $s$.  Observe the proportion of data classified as outlier changes, unlike in the Exponential case.

https://andyscholand.shinyapps.io/gamma/

