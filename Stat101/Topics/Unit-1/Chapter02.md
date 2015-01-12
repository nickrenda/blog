Chapter 02
========================================================
author: Displaying and Describing Categorical Data
date: January 14, 2015

Announcements
========================================================

- Textbook
- Add/drops

Chapter Outline
========================================================

- Review - 5 W's of data
- Review - Categorical variables
- Distribution of one categorical variable
- Relationship between two categorical variables


The 5 W's of data
========================================================

- Who
    - Cases, rows in data file
- What
    - Variables, columns in data file
- Where
    - Where did the data come from?
- When 
    - When were the data collected?
- Why
    - Why did we collect data?


Categorical Variables
========================================================

> Variables with labels as values

Example:
- Gender
- Eye color
- Year in school

Example
========================================================

<center>

sex    | age    | year   | height  | eye color
------ | ------ | ------ | ------- | ---------
female | 18     | first  | 68      | blue 
male   | 20     | third  | 70      | hazel
female | 18     | first  | 67      | green
male   | 22     | fourth | 62      | brown
...    | ...    | ...    | ...     | ...

</center>

> Rows are cases (students)

> Columns are variables (characteristics of students)

Categorical variables: ```year```, ```eyecolor```, ```sex```

Summarizing a single categorical variable
========================================================

- Number, proportion, or percentage of Who's in each category
- Summarize with
    - Frequency table
    - bar chart
    - pie chart
    
Frequency table
========================================================

- Lists the frequencies and number or proportion of Who's in each category
- Compare numbers and/or proportions

Example: Breakdown of education level of Mid-Atlantic respondents to a national survey


```
Source: local data frame [5 x 3]

        education frequency relative.freq
1       < HS Grad       268     0.1295938
2 Advanced Degree       426     0.2059961
3    College Grad       685     0.3312379
4         HS Grad       971     0.4695358
5    Some College       650     0.3143133
```

Bar Chart
========================================================

- Displays either number or percentage for each category
- Compare heights of bars
- Do not need to have all categories in display
- There are spaces between the bars
- Order of the bars does not matter

Example: Education
========================================================

![plot of chunk unnamed-chunk-2](Chapter02-figure/unnamed-chunk-2-1.png) 

Other types of bar charts
========================================================

Stacked bar chart

![plot of chunk unnamed-chunk-3](Chapter02-figure/unnamed-chunk-3-1.png) 

Other types of bar charts
========================================================

Side-by-side bar chart

![plot of chunk unnamed-chunk-4](Chapter02-figure/unnamed-chunk-4-1.png) 


Pie Chart
========================================================

- Displays percentage of whole for each category
- Compare sizes of pie slices
- Must have all categories in display

Example: Education
========================================================

![plot of chunk unnamed-chunk-5](Chapter02-figure/unnamed-chunk-5-1.png) 

Describing the relationship between two categorical variables
========================================================

- Is there an association between the two categorical variables?
- Two variables
    - Variable of interest, i.e. **Response variable**
    - Other variable, i.e. **Explanatory variable**
    - The explanatory variable is being used to "explain" the differences in the response variable
    
Example
========================================================
incremental:true

Suppose we have the following variables:
- What political party are you a member of?
- Who did you vote for last election?

> Which is the explanatory variable and which is the response variable?

- Political party could explain who people vote for, so political party would be the explanatory variable and who people voted for would be the response variable

Describing the relationship between two categorical variables
========================================================

- Is the distribution of the reponse variable different for different categories of the explanatory variable?
    - If so, then there is an **association** between the variables
- Is the distribution of the response variable approximately the same for the difference categories of the other variable?
    - There there is NOT an association between the two variables
    
Example
========================================================
incremental:true

- If the proportion of people that voted for Candidate A versus Candidate B is different for democrats and republicans, is there an association between the two variables?
    - YES
- If the proportion of people that voted for Candidate A versus Candidate B is the SAME for democrats and republicans, is there an association between the two variables?
    - NO
    
Describing the relationship between two categorical variables
========================================================

Data = two-way table, i.e. **Contingency Table**
- Rows are categories of the explanatory variable
- Columns are categories of the response variable
- Table entries: number of observations belonging to particular category of explanatory variable and particular category of response variable

Example: Education
========================================================

Education level and marital status


```
        education Divorced Married Separated
1       < HS Grad       16     174        14
2 Advanced Degree       22     341         1
3    College Grad       41     487         9
4         HS Grad       73     651        20
5    Some College       52     421        11
```

- What is the response?
    - Marital status (columns)
- What is the explanatory variable?
    - Education (rows)
    
Marginal Distributions
========================================================

- Look at percentages for each variable seperately (ignoring the other variable)
- "Margins" of contingency table
- Same as looking at two variables seperately

Contingency table with marginal distributions
========================================================


```
        education div marr sep total
1       < HS Grad  16  174  14   190
2 Advanced Degree  22  341   1   363
3    College Grad  41  487   9   528
4         HS Grad  73  651  20   724
5    Some College  52  421  11   473
6           Total 204 2074  55  2278
```

Marginal distribution of education
========================================================


```
        Education Count Proportion
1       < HS Grad   190      0.083
2 Advanced Degree   363      0.159
3    College Grad   528      0.232
4         HS Grad   724      0.318
5    Some College   473      0.208
6           Total  2278           
```

Ignore the other categorical variable

Marginal distribution of marital status
========================================================


```
  Marital status Count Proportion
1       Divorced   204       0.09
2        Married  2074       0.91
3      Separated    55      0.024
4          Total  2278           
```

This time we ignore the **education** variable

Conditional Distributions
========================================================

- Looks at percentages for one variable contingent upon (conditioned on) a particular category for the other variable
- Compare conditional distributions to marginal distributions for the same variable
- Differences indicate a potential dependence (association) between the two variables

Example: education
========================================================


```
        education div marr sep total
1       < HS Grad  16  174  14   190
2 Advanced Degree  22  341   1   363
3    College Grad  41  487   9   528
4         HS Grad  73  651  20   724
5    Some College  52  421  11   473
6           Total 204 2074  55  2278
```

Distribution of marital status conditioned on education = **College grad**


```
     education   div  marr   sep total
3 College Grad    41   487     9   528
2  Proportion: 0.078 0.922 0.017      
```

Your turn
========================================================


```
        education div marr sep total
1       < HS Grad  16  174  14   190
2 Advanced Degree  22  341   1   363
3    College Grad  41  487   9   528
4         HS Grad  73  651  20   724
5    Some College  52  421  11   473
6           Total 204 2074  55  2278
```

1. What is the conditional distribution of marital status given education level is "Some college"
2. What is the conditional distribution of education given marital status is "divorced"
3. What is the overall proportion of divorced people?
4. What is the overall proportion of married college grads?

Mosaic plot
========================================================

- Graphical summary of contitional distributions in contingency table
- Similar to segmented bar charts (in textbook)

Example
========================================================

![plot of chunk unnamed-chunk-13](Chapter02-figure/unnamed-chunk-13-1.png) 

Mosaic plot and assocations
========================================================

- Association
    - The lines (segments) in the mosaic plot do not line up
    - Indicates conditional distributions are different
- No association
    - The lines (segments) in the mosaic plot line up to form a near perfect horizontal line
    - Indicates the conditional distributions are all the same
    
Example
========================================================

Are the conditional distributions of marital status the same across education levels?

![plot of chunk unnamed-chunk-14](Chapter02-figure/unnamed-chunk-14-1.png) 



