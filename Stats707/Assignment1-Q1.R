# Q1 File gross.dat contains gross national product y in real dollars for 26 recent years, 
# x = 1,2,...,26. Use R expressions to do the followings

# a. Read data into R.
gross = read.table("gross.dat", header = TRUE)
grossProduct = gross$y;
grossProduct

# b. Plot the histogram of y. 
hist(grossProduct, col="red", xlab="Gross Rate", main="Histogram for 26 years gross national product ")

# c. Calculate the sample mean, the sample standard deviation1 and median of y.  
#   i. Mean of gross product
meanGP = mean(grossProduct)
meanGP

#   ii. Standard Deviation of Gross Product
varGP = sum((grossProduct - meanGP)^2)/(length(grossProduct) - 1)
sdGP = sqrt(varGP)
sdGP

#   iii. median of Gross Product
medianGP = median(grossProduct)
medianGP

# d.  The coding of a data set refers to the operation of subtracting (or adding) 
#     a constant to each observation and then dividing (multiplying) by another constant. 
#     The coding by subtracting the sample mean of data and dividing by the sample 
#     standard deviation is called standardization and the coded data is called standardized data. 
#     Standardize y and calculate the mean and the variance of the standardized y

## Standardize y
standardizedGP = (grossProduct - meanGP)/sdGP
standardizedGP

## Mean of Standardize y
meanStandardizedGP = mean(standardizedGP)
meanStandardizedGP

## Variance of Standardize y
varianceStandardizedGP = sum((standardizedGP - meanStandardizedGP)^2)/(length(standardizedGP) - 1)
varianceStandardizedGP

