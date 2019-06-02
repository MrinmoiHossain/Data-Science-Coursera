#### 1. What result is returned by the following code?
```r
best("SC", "heart attack")
```
##### Ans: MUSC MEDICAL CENTER

#### 2. What result is returned by the following code?
```r
best("NY", "pneumonia")
```
##### Ans: MAIMONIDES MEDICAL CENTER

#### 3. What result is returned by the following code?
```r
best("AK", "pneumonia")
```
##### Ans: YUKON KUSKOKWIM DELTA REG HOSPITAL

#### 4. What result is returned by the following code?
```r
rankhospital("NC", "heart attack", "worst")
```
##### Ans: WAYNE MEMORIAL HOSPITAL

#### 5. What result is returned by the following code?
```r
rankhospital("WA", "heart attack", 7)
```
##### Ans: YAKIMA VALLEY MEMORIAL HOSPITAL

#### 6. What result is returned by the following code?
```r
rankhospital("TX", "pneumonia", 10)
```
##### Ans: SETON SMITHVILLE REGIONAL HOSPITAL

#### 7. What result is returned by the following code?
```r
rankhospital("NY", "heart attack", 7)
```
##### Ans: BELLEVUE HOSPITAL CENTER

#### 8. What result is returned by the following code?
```r
r <- rankall("heart attack", 4)
as.character(subset(r, state == "HI")$hospital)
```
##### Ans: CASTLE MEDICAL CENTER

#### 9. What result is returned by the following code?
```r
r <- rankall("pneumonia", "worst")
as.character(subset(r, state == "NJ")$hospital)
```
##### Ans: BERGEN REGIONAL MEDICAL CENTER

#### 10. What result is returned by the following code?
```r
r <- rankall("heart failure", 10)
as.character(subset(r, state == "NV")$hospital)
```
##### Ans: RENOWN SOUTH MEADOWS MEDICAL CENTER