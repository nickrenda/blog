---
layout: post
title: Data mining techniques for classification
subtitle: A generic approach to dealing with categorical variables
---

In the real world, data often comes in the form of categorical variables, i.e. variables without a natural ordering. This presents a problem for data mining challenges as many machine learning algorithms cannot directly deal with categorical features, such as linear regression or even the ever-so-popular [Extreme Gradient Boosting (xgboost)](https://github.com/dmlc/xgboost). Instead, these features need to be transformed into numerical variables in such a way that the information regarding the response variable is preserved.

One simple yet popular transformation is one-hot encoding, where each level (unique value) of a categorical feature is transformed into an indicator variable (aka "dummy variable"). For example, suppose we have the feature 'color' with the levels blue, green, and red. The first few rows of the feature
'color' may look like this:

|   | color |
|---|-------|
| 1 | blue  |
| 2 | green |
| 3 | blue  |
| 4 | red   |
| ... | ... |

After applying the transformation, we would replace 'color' with 3 new variables 'blue,' 'green,' and 'red':

|   | blue | green | red |
|---|------|-------|-----|
| 1 | 1 | 0 | 0 |
| 2 | 0 | 1 | 0 |
| 3 | 1 | 0 | 0 |
| 4 | 0 | 0 | 1 |
| ... | ... | ... | ... |


Below is a simple function in Python that performs this transformation on an arbitrary number of features.

```python
import pandas as pd

def dumb_down(df, *args):
    """
    Transform categorical features listed as *args into dummy variables.
    """
    for arg in args:
        dummy_cols = pd.get_dummies(df[arg], prefix=arg)
        df = pd.concat([df, dummy_cols], axis=1)
    return df.drop(list(args), axis=1)
```

Here is a minimal working example:

```python
df = pd.DataFrame({'color': ['blue', 'green', 'blue', 'red'],
                   'size' : ['small', 'large', 'large', 'small']})
df

#  color   size
#   blue  small
#  green  large
#   blue  large
#    red  small
   
dumb_down(df, 'color', 'size')

# color_blue  color_green  color_red  size_large  size_small
# 1.0          0.0          0.0         0.0         1.0
# 0.0          1.0          0.0         1.0         0.0
# 1.0          0.0          0.0         1.0         0.0
# 0.0          0.0          1.0         0.0         1.0
```

While one-hot encoding can be very useful, it is not without its drawbacks. The main issue is that when a categorical feature has $n$ different levels, $n$ different dummy variables have to be created. This means that when the number of levels is high, the number of features can increase drastically by doing one-hot encoding, especially if you want to include interactions between multiple categorical features. 

For classification problems there is an alternative to dummy variables, called empirical log probability ratios (lpr's), which has been demonstrated to work very well in practice.

## Empirical log probability ratios

This approach was developed by [Cory Lanker, PhD](http://people.llnl.gov/lanker1), and has been implemented with success in several data mining competitions, including:

- the 1st place solution to the [2014 Data Mining Cup](http://www.data-mining-cup.de/en/review/goto/article/dmc-2014.html),
- the 2nd and 3rd place solutions to the [2015 Data Mining Cup](http://www.data-mining-cup.de/en/review/goto/article/dmc-2015.html),
- and the 2nd place solution to the [2016 Data Mining Cup](http://www.data-mining-cup.de/en/wettbewerb/preistraeger.html).

Dr. Lanker also gave a theoretical justification for this approach in his dissertation at Iowa State University in 2015.

The idea is to tranform each categorical feature using a real-valued function of that variable and the response variable. Suppose, for instance, we have the variable 'size' which represents the size of a t-shirt, and we want to predict whether or not the t-shirt is returned.
Ultimately we want to estimate the conditional probability of the t-shirt being returned for each color:
\begin{equation}
\hat{P}\left(\text{returned} \big| \text{size = x}\right) = \frac{\text{# items returned with size = x}}{\text{# items with size = x}}.
\label{0}
\end{equation}

Similarly, the ratio
\begin{equation}
\frac{\hat{P}\left(\text{returned}\big| \text{size = x}\right)}{\hat{P}\left(\text{not returned}\big|\text{size = x}\right)} = \frac{\text{# items returned with size = x}}{\text{# items not returned with size = x}}
\end{equation}
encorporates the same information as equation \eqref{0}.

This is the motivation for the transformation function defined below in equation \eqref{1}. Note that since this transformation is a function of the reponse variable, it should only be calculated based on a separate "historical" set which is never used for training.

The danger of calculating this transformation on the same set used for training is the risk of [leakage](https://www.kaggle.com/wiki/Leakage): where information about the specific values of the response variable are "leaked" into the training set, causing your model to overfit the training data.

![](/img/posts/2016-07-01/historical_features.png)

\begin{equation}
\text{size x } \mapsto \log 
\frac{\text{(# items returned in historical set with size = x)} + \epsilon_{0}}{\text{(# items not returned in historical set with size = x)} + \epsilon_{1}}.
\label{1}
\end{equation}

So according to equation \eqref{1}, the transformed 'size' variable in the training and test sets are created by mapping each observation to a real number depending on 'size.' The log is taken to add numerical stability and the small $\epsilon$ terms are added to the numerator and denomator to ensure the log function is well-defined. These terms can also be thought of as priors and chosen in a Bayesian way. 

Below is some Python code to calculate these transformations.

```python
import pandas as pd
import math


def log_ratio(values):
    """ 
    Aggregation function for pandas groupby. Needed for transform function. 
    """
    n1 = sum(values)
    n0 = len(values) - n1
    return math.log(n1 + 0.5) - math.log(n0 + 0.5)


def get_name(names):
    """
    Helper function to create names of transformed variables.
    """
    if type(names) is not list: names = [names]
    out = 'lpr_' + names[0]
    if len(names) > 1:
        for name in names[1:]:
            out += '_x_' + name
    return out


def transform(hist_df, target_df, var_names, y):
    """
    Calculate empirical log probability ratios.

    Args (name, type, description):
      hist_df    DataFrame           historical set
      var_names  list of str or str  variables to transform
      target_df  DataFrame           training or test set
      y          str                 response variable
    Returns: DataFrame with transformed variables for target_df.
    """
    if type(var_names) is not list: var_names = [var_names]
    lprs = hist_df.groupby(var_names)[y].agg(log_ratio)
    combos = [x for x in lprs.index]
    temp = pd.DataFrame(combos)
    temp['lpr'] = lprs.values
    temp.columns = var_names + [get_name(var_names)]
    merged = pd.merge(target_df, temp, how='left', on=var_names).fillna(0)
    return merged.drop(var_names, axis=1)
```

This function can be used not just to calculate transformations of a single categorical variable, but also combinations of an arbitrary number of categorical variables. Here is a minimal working example:

```python
hist = pd.DataFrame({'color': ['blue', 'green', 'blue', 'red', 'red'],
                     'size' : ['small', 'large', 'large', 'small', 'small'],
                     'returned' : [1, 0, 1, 1, 1]})
hist

#   color size   returned
#   blue  small  1
#  green  large  0
#   blue  large  1
#    red  small  1
#    red  small  1


train = pd.DataFrame({'color': ['green', 'red', 'red', 'blue'],
                      'size': ['small', 'small', 'large', 'large']})
train

#   color size
#  green  small
#    red  small
#    red  large
#   blue  large


transform(hist, train, ['color', 'size'], 'returned')

#  lpr_color_x_size
#     0.000000
#     1.609438
#     0.000000
#     1.098612

transform(hist, train, 'color', 'returned')

#    size  lpr_color
#   small  -1.098612
#   small   1.609438
#   large   1.609438
#   large   1.609438
```

There are several ways you could improve the above function. For one, you could modify the function to calculate the $\epsilon$ terms in a Bayesian way instead using $\epsilon_{0} = \epsilon_{1} = 0.5$. The function also assigns a value of 0 when it encounters levels or combinations of levels in the target set that were not in the historical set. Instead, you could assign these levels to $\log \epsilon_{0} - \log \epsilon_{1}$ if you chose $\epsilon_{0}$ to be different from $\epsilon_{1}$.
