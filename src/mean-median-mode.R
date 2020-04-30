# Mean
# The mean is calculated by taking the sum of the values and dividing by
# the number of values in a data series

# To calculate the mean, first create a vector
x <- c(3,11,8,-4,21,9)
# Then, use the mean() function to find the mean
result.mean <- mean(x)
print(result.mean)
[1] 8

# Median
# The median is the middle-most value in a data series

# To calculate the median, first create an input vector
x <- c(3,11,8,-4,21,9)
# Then, use the median() function to find the median of the set
median.result <- median(x)
print(median.result)
[1] 8.5

# Mode
# The mode is the value which contains the greatest number of occurences 
# in a data series

# To find the mode, first create the vector with numbers
# x <- c(5,4,2,7,6,2,11,15,9)
# Then, use the getmode() function to find the mode of the set
result <- getmode(x)
print(result)
[1] 2
