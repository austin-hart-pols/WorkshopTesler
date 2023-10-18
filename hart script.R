#+++++++++++++++++++++++++++++++++
#+ Workshop: racial resentment
#+ SIS 600
#+ Fall 2023
#+++++++++++++++++++++++++++++++++

# SETUP --------------------------
# Libraries
  library(tidyverse)
  library(haven)
  library(stargazer)

# Directory
  setwd('your folder here')
  
# Data
  load('anes2012 workshop.RData')

# ANALYSIS -----------------------
## Q5 ----
  count(df, raceeth.selfid) # score of 1 for white, non-hispanic
  df = filter(df, raceeth.selfid == 1)

## Q6 ----
  tab1 = # create freq table 
    count(df, resent.slavery) %>%
    mutate(per = n/sum(n) * 100)
  
  tab1 # view freq table
    
  barplot(per ~ resent.slavery, tab1) # make bar plot
  
  #+ This is a nominal/categorical variable. So I need a freq. table.
  #+ I see that over half (56%) of white respondents disagree that slavery
  #+ has a lasting impact with "disagree somewhat" the modal response (29%). 
  
## Q7 ----
  summary(df$resent.index) # summary stats
  hist(df$resent.index, xlab = 'Resentment index') # histogram 

  #+ This is a continuous/numeric variable. I need summary stats and a histogram
  #+ or boxplot. The summary stats show that resentment index scores for the 
  #+ 3,273 white respondents range from 0 to 1 witha. mean of 0.66 and median of 0.69. 
  #+ Note that the score at the 25th percentile is 0.5, meaning that 75% of respondents
  #+ hold views considered racially resentful on this scale.

## Q9 ----
  m1 = lm(ft.unions ~ resent.index, df) # estimate regression
  stargazer(m1, type = 'text', keep.stat = 'n') # reg table
  plot(ft.unions ~ resent.index, df)
    abline(m1, col = 'mediumorchid', lw = 2) # plot with linear fit
    
  #+ I have two continuous vars. I need regression analysis.
  #+ I find a negative relationship: as resentment scores increase, average
  #+ ratings of labor unions become more cold/negative. The regression estimate
  #+ shows that a 1-point increase in resentment is expected to reduce union
  #+ ratings by 36 points. The effect is significant at 5%.