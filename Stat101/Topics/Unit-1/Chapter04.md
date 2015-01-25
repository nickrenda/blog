Chapter 04
========================================================
author: Understanding and Comparing Distributions
date: Week 3

Announcements
========================================================

Chapter Outline
========================================================

- Comparing distribution of quantitative variable between groups
- Boxplots
    - Side-by-side boxplots
- Outliers

Variables
========================================================

- **Categorical** 
    - Values = labels or categories
- **Quantitative**
    - Values = numbers
    
Relationship between a categorical variable and quantitative variable
========================================================

- Divide the "who" into groups based on value of a categorical variable
- Compare distribution of quantitative variable between these groups
- Response variable = quantitative variable
- Explanatory variable = categorical variable

Example: Stat 101 student data
========================================================

![plot of chunk unnamed-chunk-1](Chapter04-figure/unnamed-chunk-1-1.png) 

Example: Stat 101 student data
========================================================

- Symmetric
- Bimodal
    - One around 65, the other around 70-75
- Outliers
    - Low - below 45 inches

***

![plot of chunk unnamed-chunk-2](Chapter04-figure/unnamed-chunk-2-1.png) 

Example: Stat 101 student data
========================================================

- Other variables collected
    - Gender
    - Year in college
    - Number of brothers and sisters
    - Exercise status
    - Etc.
- Are any of these variables associated with height?

Example: Stat 101 student data
========================================================

- Quantitative variable
    - Height
- Categorical variable
    - Gender (Male, Female)
    
Histograms of height for female and male students
========================================================
    
![plot of chunk unnamed-chunk-3](Chapter04-figure/unnamed-chunk-3-1.png) 

Height and Gender
========================================================

- Distribution of heights of Stat 101 students by gender
    - Roughly symmetric, bell shaped
    - Unimodal
    - Outliers 
        - low outlier for females, high for females
        - low for males
    
5-Number Summary
========================================================

       | Female | Male 
------ | ------ | -----
Min    | 44     | 58
Q1     | 64     | 70
Median | 66     | 72
Q3     | 68     | 73
Max    | 82     | 85

Boxplot
========================================================

- Graph of 5-number summary
    - Box between Q1 and Q3
    - Line in the box at median

Boxplot
========================================================

- Whiskers and outliers
    - Calculate Q1 - 1.5*IQR
    - If Min < Q1 - 1.5*IQR
        - Whisker out to Q1 - 1.5*IQR
        - Points less than Q1 - 1.5*IQR denoted by dots
    - If Min > Q1 - 1.5*IQR
        - Whisker out to Min
        
Boxplot
========================================================

- Whiskerks and outliers
    - Calculate Q3 + 1.5*IQR
    - If Max > Q3 + 1.5*IQR
        - Whisker out to Q3 + 1.5*IQR
        - Points greater than Q3+1.5*IQR denoted by dots
    - If Max < Q3 + 1.5*IQR
        - Whisker out to Max
        
Boxplots of height by sex
========================================================

![plot of chunk unnamed-chunk-4](Chapter04-figure/unnamed-chunk-4-1.png) 

Interpreting boxplots
========================================================

- Symmetry or skewness
    - Middle of distribution
        - Compare median - Q1 and Q3 - median
            - Roughly equal = symmetric
            - Median - Q1 < Q3 - median = skewed right
            - Median - Q1 > Q3 - median = skewed left
    - Ends of distribution
        - Compare Q1 - Min and Max - Q3
            - Roughly equal = symmetric and/or no outliers
            - Q1 - Min < Max - Q3 = skewed right or large outliers
            - Q1 - Min > Max - Q3 = skewed left or large outliers
            
Interpreting boxplots
========================================================

- Modes
    - Cannot be determined through boxplots
- Outliers
    - Potential outliers are marked with dots outside of whiskers
    - May or may not be potential outliers in histogram
    
Example
========================================================

- Female heights
    - Median- Q1 > Q3 - median
        - Left skewed
    - Q1 - Min > Max - Q3
        - Left skewed, or just outlier
        
***

![plot of chunk unnamed-chunk-5](Chapter04-figure/unnamed-chunk-5-1.png) 

Example
========================================================

- Male heights
    - Q3 - Median $\approx$ Median - Q1
        - Approximately symmetric
    - Q1 - Min > Max - Q3
        - Outlier
        
***
        
![plot of chunk unnamed-chunk-6](Chapter04-figure/unnamed-chunk-6-1.png) 

What to do with outliers?
========================================================

- Check data entry
    - True value?
- If true value
    - Analyze both with the outlier and without
    
Choosing a graph for quantitative variables
========================================================

- Want to describe shape of distribution?
    - Histogram
- Want to compare distributions for groups?
    - Boxplots (especially if there are more than 2 groups)
    
