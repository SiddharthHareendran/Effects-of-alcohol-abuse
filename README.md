# Effects-of-alcohol-abuse

The objective is to find effects of alcohol abuse on employment as well as trying to relate socioeconomic factors to alcohol abuse.

Questions putforth: 
1. What fraction of the sample is employed at the time of the interview? What fraction of the sample has
abused alcohol?
2. Run the simple regression of employ on abuse and report the results in the usual form, obtaining the
heteroskedasticity-robust standard errors. Interpret the estimated equation. Is the relationship as you
expected? Is it statistically significant?
3. Run a glm-logit of employ on abuse. Do you get the same sign and statistical significance as in part 2?
How does the average marginal effect for the logit compare with that for the linear probability model?
4. Obtain the fitted values for the LPM estimated in part 2 and report what they are when abuse = 0 and
when abuse = 1. How do these compare to the logit fitted values, and why?
5. To the LPM in part 2 add the variables age, age2, educ, educ2, married, famsize, white, northeast,
midwest, south, centcity, outercity, qrt1, qrt2, and qrt3. What happens to the coefficient on abuse
and its statistical significance?
6. Estimate a glm-logit model using the variables in part 5. Find the marginal effect of abuse and its
t-statistic. Is the estimated effect now identical to that for the linear model? Is it “close”?
7. Variables indicating the overall health of each man are also included in the data set. Is it obvious that
such variables should be included as controls? Explain.
8. Why might abuse be properly thought of as endogenous in the employ equation? Do you think the
variables mothalc and fathalc, indicating whether a man’s mother or father were alcoholics, are sensible
instrumental variables for abuse?
