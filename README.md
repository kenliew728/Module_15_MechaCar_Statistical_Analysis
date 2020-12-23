# **MeChaCar Statistical Analysis**
## ***Linear Regression to predict MPG***

Based on the multiple linear regression analysis, the variables that provide a non-random amount of variance to the mpg values are the vehicle length and the ground clearance, as their p-value of 2.6 x 10^-12 and 5.21 x 10^-8 were below the significant value of 0.05%

The slope of the linear model is considered to be not zero as the p-value for the analysis is 5.35 x 10^-11, which was much smaller than the assumed significance level of 0.05%. 

The linear model will be effective in predicting mpg results as the R² value of 0.7149, which translates to a probability of 71.5% the mpg prediction will be accurate.

*Figure 1.1: Multiple Linear Aggression Analysis Results*

![Linear Regression](https://user-images.githubusercontent.com/70525492/102955023-96c3d180-449a-11eb-8d59-414c21d60d50.png)

## ***Summary Statistics on Suspension***

The design specification for the MechaCar suspension coil has specified that the variance of the suspension coils must not exceed 100lb/SqInch. Based on the summary statistic of all the dataset, it can be concluded that the coils met the design specification. However, when the data is grouped by manufacturing lot, lot#3 has exceed the variance specification with result of 170.3lb/SqInch

*Figure 1.2: Statistical Summary based on all dataset*

![total_summary](https://user-images.githubusercontent.com/70525492/102957984-819e7100-44a1-11eb-869e-2c788a597c2c.png)

*Figure 1.3: Statistical Summary by Manufacturing lot*

![lot_summary](https://user-images.githubusercontent.com/70525492/102957983-819e7100-44a1-11eb-9635-8f34e2a7969d.png)

## ***T-Tests on Suspension Coils***

### *All Manufacturing lot vs. Population*

The first test was to determine if the PSI across all manufacturing lot is statistically different from the population mean of 1,500 lb/SqInch. To accomplish that, 50 ransom sample size is selected and tested for normality. Based on the Shapiro-Wilkins test, the sample size was not normally distributed as the p value was less than 0.05 level of significance.

*Figure 1.4: Normality test on sample lot,*
![all_lot_samples_Shapiro](https://user-images.githubusercontent.com/70525492/103032842-a983e800-4526-11eb-9cac-d419743c3bfc.png)

Log 10 transformation was used to perform the one-sample t-test with the following results. Based on the result, the p-value was 0.9711, which was higher than 0.05 level of significance. We can accept the null hypothesis and conclude that there is no difference between mean of samples vs. mean of population.

*Figure 1.5: One-Sample t-test between sample and population lot*
![all_lot_t_test](https://user-images.githubusercontent.com/70525492/103032843-a983e800-4526-11eb-80c5-2901e99766fb.png)

### *Each Manufacturing Lot vs. Population*

The next analysis is to compare manufacturing lot to overall population mean to determine if we need to accept or reject the hypothesis. Similar to all lot comparison to the population, a normality test is performed with the following results on each lot.

*Figure 1.6: Normality test by each manufacturing lot sample*

![shapiro_each_lot](https://user-images.githubusercontent.com/70525492/103036715-0768fd80-4530-11eb-8010-610d018c453a.png)

From the normality test, it will determine if the sample date will need to apply log10 transformation. T-test is performed on each lot to the population with the following results

Lot 1: Reject null hypothesis and conlcude that there is difference in mean between sample lot 1 and population (p value = 3.9 x 10^-8)

Lot 2: Reject null hypothesis and conlcude that there is difference in mean between sample lot 2 and population (p-value: 0.005)

Lot 3: Accept null hypothesis and conlcude that there is no difference in mean between sample lot 3 and population (p-value: 0.6911)

*Figure 1.7: One-Sample t-test between Lot 1 & Population Sample*
![lotone_t](https://user-images.githubusercontent.com/70525492/103036815-33847e80-4530-11eb-9e7d-f96f5948b511.png)

*Figure 1.8: One-Sample t-test between Lot 2 & Population Sample*
![Lot2_t](https://user-images.githubusercontent.com/70525492/103036818-34b5ab80-4530-11eb-933b-4b05dc138a9a.png)

*Figure 1.9: One-Sample t-test between Lot 3 & Population Sample*
![Lot3_t](https://user-images.githubusercontent.com/70525492/103036823-367f6f00-4530-11eb-8d06-2b908da4a935.png)

## ***Study Design: MechaCar vs Competion***

In order to evaluate if MechaCar performs better or worse than the competitions, a statistical study is created by comparing MecharCar models to three other direct competitors in different class of vehicles such as sedan, SUV, and Truck. The metrics that will be used are design, trim option, safety rating, fuel consumption, price, cost of maintenance, and residual value. 

The design of the study will be in the form of survey listing MechaCars models with competitors along with all the evaluation metrics. It will contains personal information such as gender, income level, level of education, and race. Each metric will have participants answer a Yes or No question. Since the survey will be in the form of categorial data, a Chi-Squere test will be performed with H0 being no difference in frequency distribution between both groups. 

The Chi-Square test will determine if customers prefer MechaCars over competitions based on different metrics. On top of that, by collecting participants information, we can also run a correlation study to determine if gender, level of education, or race plays a role in participants preferring MecharCar over competitions of vice-versa. 