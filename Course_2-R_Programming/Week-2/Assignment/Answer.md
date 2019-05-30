#### 1. What value is returned by the following call to pollutantmean()? You should round your output to 3 digits.
```r
pollutantmean("specdata", "sulfate", 1:10)
```
##### Ans: 4.064

#### 2. What value is returned by the following call to pollutantmean()? You should round your output to 3 digits.
```r
pollutantmean("specdata", "nitrate", 70:72)
```
##### Ans: 1.706

#### 3. What value is returned by the following call to pollutantmean()? You should round your output to 3 digits.
```r
pollutantmean("specdata", "sulfate", 34)
```
##### Ans: 1.477

#### 4. What value is returned by the following call to pollutantmean()? You should round your output to 3 digits.
```r
pollutantmean("specdata", "nitrate")
```
##### Ans: 1.703

#### 5. What value is printed at end of the following code?
```r
cc <- complete("specdata", c(6, 10, 20, 34, 100, 200, 310))
print(cc$nobs)
```
##### Ans: 228 148 124 165 104 460 232

#### 6. What value is printed at end of the following code?
```r
cc <- complete("specdata", 54)
print(cc$nobs)
```
##### Ans: 219

#### 7. What value is printed at end of the following code?
```r
set.seed(42)
cc <- complete("specdata", 332:1)
use <- sample(332, 10)
print(cc[use, "nobs"])
```
##### Ans: 711 135 74 445 178 73 49 0 687 237

#### 8. What value is printed at end of the following code?
```r
cr <- corr("specdata")                
cr <- sort(cr)                
set.seed(868)                
out <- round(cr[sample(length(cr), 5)], 4)
print(out)
```
##### Ans: 0.2688 0.1127 -0.0085 0.4586 0.0447

#### 9. What value is printed at end of the following code?
```r
cr <- corr("specdata", 129)                
cr <- sort(cr)                
n <- length(cr)                
set.seed(197)                
out <- c(n, round(cr[sample(n, 5)], 4))
print(out)
```
##### Ans: 243.0000 0.2540 0.0504 -0.1462 -0.1680 0.5969

#### 10. What value is printed at end of the following code?
```r
cr <- corr("specdata", 2000)                
n <- length(cr)                
cr <- corr("specdata", 1000)                
cr <- sort(cr)
print(c(n, round(cr, 4)))
```
##### Ans: 0.0000 -0.0190 0.0419 0.1901