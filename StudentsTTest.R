#The following code performs a Welch's two-sample student's t test on two vectors of data.
#It looks for a statistically significant difference between the means of two data samples.  The test is one tailed,
#since it assumes that one set of data has a significantly larger mean value than the other data set.
#The variances of the two data vectors are not assumed to be equal.

#Vector one is a sample of assumed low radiation dose data (air kerma) from an x-ray imaging system in units of mGy.
Low_dose_data <- c(75,128,159,343,273,242,186,134,99,86,320,276,2590,417,209,72,66,379,477,39,148,94,366,58,209,
                   252,165,218,110,178,212,277,182,449,66,86,209,295,105,119,102,623,417,174,116,368,63,76,761,358,
                   670,156,394,181,128,202,179,206,129,819,171,204,191,231,590,200,244,390,498,190,254,193,244,93,
                   156,86,1187,176,450,126,365,368,109,58,60,133,510,697)

#The second data vector is a sample of high radiation dose data (air kerma) from a different x-ray imaging system
#that delivers an assumed mean higher dose per patient than the other system, in units of mGy.
High_dose_data <- c(183,172,549,369,350,461,494,145,509,601,382,414,310,461,259,667,421,458,528,653,693,792,444,264,
                    456,957,492,1447,1026,788,920,188,533,419,108,798,470,1229,320,605,1665,929,690,500,363,760,231,
                    1015,497,434,737,1640,815,530,275,352,868,540,92,1626,299,241,558,878,463,550,525,224,330,642,
                    388,677,234,1839,184,396,168,688,180,760,250,502,374,108,920,280,236,768)

#Now perform the student's t test to see if there is a statistically signficant difference between the means
#of the two data vectors.  The alternative to the null hypothesis is that the mean of the low dose data
#is less than the mean of the high dose data, so this is a one-tailed test.  This is a test comparing
#two data vectors of the same size.  The variances of each data vector were not assumed to be equal.  95% confidence
#levels were also used.  For p-value testing, a significance level of alpha = 0.05 was chosen.  Therefore, if
#the calculated p-value was found to be less than 0.05, then a significant difference between the means of the
#two data vectors was present.  In this case, the p-value was found to be < 0.0001, so the mean dose was considered
#to be much lower in the low dose data compared to the high-dose data and the null hypothesis that there was no
#significant difference between the mean dose of the two data vectors could be confidently rejected.
Outcome <-t.test(Low_dose_data, High_dose_data, alternative = "less", paired = FALSE, var.equal = FALSE, 
                 conf.level = 0.95)


