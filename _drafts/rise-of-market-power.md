---
layout: page
title: The Rise of Market Power and Macroeconomic Implications
author: De Loecker and Eeckhout
pyear: 2017
journal: Working Paper
mathjax: true
tags: [retail, methods]
---

# De Loecker and Eeckhout (2017)

This paper uses Compustat to estimate how firm level markups change between 1950 and 2014.  They find markups were stable or slightly decreasing between 1950 and 1980.  Between 1980 and 2014 markups increased from 18 percent over marginal cost to 67 percent.  They find this increase takes place across all sectors of the economy.  Within sectors small firms increase markups more.  They find a sharp increase in high markup firms.  These results have implications for a number of secular trends.  They show an increase in markups is consistent with 1. decrease in the labor share, 2. increases in the capital share, 3. decreases in low skill wages, 4. decreases in labor for participation, 5. decreases in labor flows, 6. decreases in migration rates, 7. slowdown in aggregate output.

There are two key questions when assessing the paper.  1. How accurately do they measure markups? 2. Does the trend from Compustat extend to the economy as a whole?

<!--more-->

# Measuring Markups

Their measurement of markups comes down to one key equation

$$ \mu_{it} = \beta_v {S_{it} \over C_{it}} $$

\\(\beta_v\\) is the output elasticity of costs of goods sold, \\(S_{it}\\) is firm level revenue in year \\(t\\), \\(C_{it}\\) is firm level cost of goods sold in year \\(t\\).  Their estimate of \\(\beta_v\\) does not vary over time so all of the variation in markups comes from changes in the ratio of revenue to cost of goods sold.  In essence the entire point of the paper is that this ratio has been increasing.


Their key result is captured in figure 1.  There is a consistent rise in the ratio of sales to cost of goods sold over this period.

[Figure]

I've been able to reproduce this ratio using the Compustat data.  However, it turns out that this increase goes away when you include marketing and management expenses in cost of goods sold [(Traina (2018))](https://research.chicagobooth.edu/-/media/research/stigler/pdfs/workingpapers/17isaggregatemarketpowerincreasing.pdf?la=en&hash=FB051A5CA5C6E30A277318B456EBF0E493A92EB3).  Additionally Traina finds that markups are increasing in firm size so if you account for the fact that Compustat is a selected sample aggregate markups are flat or slightly decreasing.


# Representiveness of Compustat

Compustat accounts for one-third of U.S. employment [(Davis, Haltiwanger, Jarmin, and Miranda (2007))](www.nber.org/chapters/c11178.pdf).
