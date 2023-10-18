# Workshop on racial resentment

This in-class exercise is based on Michael Tesler’s 2018 book *Post Racial or Most Racial?* You will need to read the assigned chapters carefully in order to complete this worksheet. You will also need access to the 2012 ANES data from the Google drive.

This is a serious topic. Tesler’s book gives a rigorous academic treatment of it, and is a good example of a statistical approach to a defining issue in American politics and beyond. We can only give it a surface-level treatment in class. That said, I cannot shy away from serious or troubling issues just because this is a research methods course.

Use the first part as a guide for our in-class discussion. We will cover the remaining sections together in class.

## Conceptualization and measurement  

1. What key concept is Tesler trying to define and operationalize in Chapter 1? Be specific. 
2. How does Tesler construct his index of racial resentment? Be sure your answer includes all four components of the measure, the theoretical minimum and maximum score, and what high or low scores indicate substantively. 
3. Explain Tesler’s argument about the racialization of politics. What would racialization look like empirically, or how would you know it if you saw it in the data?



## Exploring the data; identifying our cases  

To begin our empirical work, download the raw data and move it to your project folder:

> `anes2012 workshop.rdata`: 2012 American National Election Study (ANES) data. Note that the 2012 ANES data records responses from interviews with voting age adults in the US before and after the 2012 US presidential elections.

Open a new script in RStudio. As with every script, start by loading the packages we need (`tidyverse`, `haven`, `stargazer`). Then set your project folder as your working directory (`setwd`). Now you can load the data.

4. Examine what you have:  
    - How many observations does the ANES data include?
    - How many variables?
    - What is the unit of analysis?

5. Like Tesler, we’ll look only at responses from respondents who identify as white, non-Hispanic. Use the `count` function to tabulate scores on race/ethnicity (`raceeth.selfid`).  
    - What is the numeric score for white, non-Hispanic respondents?  
    - How many respondents identify as white, non-Hispanic?  
    - Use the filter function to limit the sample to only white, non-Hispanic respondents. 
  
  
## Initial description

6. Describe the respondents’ attitudes about the legacy of slavery (`resent.slavery`). This is a categorical variable. So be sure to present a frequency table or bar graph and brief text summarizing the data.

7. Describe the data on the resentment index (`resent.index`). Your answers should include an appropriate visual of the distribution (histogram or boxplot) and text description with reference to appropriate summary statistics (e.g. min/max scores, mean or median).


## Assessing relationships

8. Evaluate the association between anti-black resentment (exposure variable) and attitudes about labor unions.   
    - Estimate the linear regression of labor-union sentiment (Y) on resentment (X).
    - Present a scatter plot of the relationship with linear fit. 
    - In a short paragraph of text, describe the estimated relationship.

EXTRA CREDIT: repeat the analysis in question 8 above for another continous outcome variable of your choosing. Post your work on Canvas. 




