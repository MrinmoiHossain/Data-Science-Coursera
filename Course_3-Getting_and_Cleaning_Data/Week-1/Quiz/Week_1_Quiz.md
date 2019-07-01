### 1. The American Community Survey distributes downloadable data about United States communities. Download the 2006 microdata survey about housing for the state of Idaho using download.file() from here:
> https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv
### and load the data into R. The code book, describing the variable names is here:
> https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf
### How many properties are worth $1,000,000 or more?
#### Ans: 53
```r
setwd('')
file <- read.csv('getdata_data.csv', sep = ',', header = TRUE)
sum(file$VAL == 24, na.rm = TRUE)
```

### 2. Use the data you loaded from Question 1. Consider the variable FES in the code book. Which of the "tidy data" principles does this variable violate? 
#### Ans: Tidy data has one variable per column. 

### 3. Download the Excel spreadsheet on Natural Gas Aquisition Program here:
> https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx
### Read rows 18-23 and columns 7-15 into R and assign the result to a variable called:
```
dat
```
### What is the value of:
```r
sum(dat$Zip*dat$Ext,na.rm=T)
```
#### Ans: 36534720
```r
library(xlsx)
dat <- read.xlsx("getdata_data_DATA.gov_NGAP.xlsx", sheetIndex=1, colIndex = 7:15, rowIndex = 18:23)
dat
sum(dat$Zip*dat$Ext, na.rm=T)
```

### 4. Read the XML data on Baltimore restaurants from here:
> https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml
### How many restaurants have zipcode 21231? 
#### Ans: 127
```r
library(XML)
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
file <- xmlTreeParse(sub("s", "", fileUrl), useInternal = TRUE)
rootNode <- xmlRoot(file)
zip <- xpathSApply(rootNode, "//zipcode", xmlValue)
sum(zip == 21231)
```

### 5. The American Community Survey distributes downloadable data about United States communities. Download the 2006 microdata survey about housing for the state of Idaho using download.file() from here:
> https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv
### using the fread() command load the data into an R object
```
DT
```
### The following are ways to calculate the average value of the variable
```
pwgtp15
```
### broken down by sex. Using the data.table package, which will deliver the fastest user time? 
#### Ans: tapply(DT$pwgtp15,DT$SEX,mean) | sapply(split(DT$pwgtp15,DT$SEX),mean) | mean(DT$pwgtp15,by=DT$SEX) -> system.time(DT[,mean(pwgtp15),by=SEX])
```r
fileUrl <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv'
download.file(fileUrl, destfile = "./quiz5data.csv", method = "curl")
library(data.table)
DT <- fread('quiz5data.csv')
DT
```


