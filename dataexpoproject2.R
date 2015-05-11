
R version 2.15.2 (2012-10-26) -- "Trick or Treat"
Copyright (C) 2012 The R Foundation for Statistical Computing
ISBN 3-900051-07-0
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

>  sparrow=data.frame(
+ pop.year=c(272690813,270248003,267783607,265228572,262803276,260327021,257782608,255029699,252153092,249464396,246819230,244498982,242288918,240132887,237923795,235824902,233791994,231664458,229465714,227224681,225055487,222584545,220239425,218035164,215973199,213853928,211908788,209896021,207660677,205052174,202676946,200706052,198712056,196560338,194302963,191888791,189241798,186537737,183691481,180671158,177829628,174881904,171984130,168903031,165931202,163025854,160184192,157552740,154877889,152271417),
+ year.date=c(1999,1998,1997,1996,1995,1994,1993,1992,1991,1990,1989,1988,1987,1986,1985,1984,1983,1982,1981,1980,1979,1978,1977,1976,1975,1974,1973,1972,1971,1970,1969,1968,1967,1966,1965,1964,1963,1962,1961,1960,1959,1958,1957,1956,1955,1954,1953,1952,1951,1950))
> plot(pop.year~year.date,data=sparrow)
> 
> census=data.frame(
+ pop.year=c(272690813,270248003,267783607,265228572,262803276,260327021,257782608,255029699,252153092,249464396,246819230,244498982,242288918,240132887,237923795,235824902,233791994,231664458,229465714,227224681,225055487,222584545,220239425,218035164,215973199,213853928,211908788,209896021,207660677,205052174,202676946,200706052,198712056,196560338,194302963,191888791,189241798,186537737,183691481,180671158,177829628,174881904,171984130,168903031,165931202,163025854,160184192,157552740,154877889,152271417),
+ gdp.nat=c(8694.6,8250.9,7762.3,7342.3,7017.5,6604.3,6286.8,5946.9,5757.2,5441.7,5063.9,4702.1,4427.7,4187.5,3902.6,3508.8,3229.5,3105.4,2768.9,2544.5,2276.9,2014.3,1809.8,1624.0,1486.4,1369.8,1225.4,1113.4,1025.0,973.39,901.46,825.06,780.76,712.08,656.91,611.67,579.75,539.05,520.53,526.4,506.6,467.2,461.1,437.4,414.7,380.4,379.3,358.3,339.3,293.7))
> plot(pop.year~gdp.nat,data=census
+ plot(pop.year~gdp.nat,data=census)
Error: unexpected symbol in:
"plot(pop.year~gdp.nat,data=census
plot"
> plot(pop.year~gdp.nat,data=census))
Error: unexpected ')' in "plot(pop.year~gdp.nat,data=census))"
> plot(pop.year~gdp.nat,data=census)
> 
> 
> 
> finite=data.frame(
+ gdp.nat=c(8694.6,8250.9,7762.3,7342.3,7017.5,6604.3,6286.8,5946.9,5757.2,5441.7,5063.9,4702.1,4427.7,4187.5,3902.6,3508.8,3229.5,3105.4,2768.9,2544.5,2276.9,2014.3,1809.8,1624.0,1486.4,1369.8,1225.4,1113.4,1025.0,973.39,901.46,825.06,780.76,712.08,656.91,611.67,579.75,539.05,520.53,526.4,506.6,467.2,461.1,437.4,414.7,380.4,379.3,358.3,339.3,293.7),
+ year.date=c(1999,1998,1997,1996,1995,1994,1993,1992,1991,1990,1989,1988,1987,1986,1985,1984,1983,1982,1981,1980,1979,1978,1977,1976,1975,1974,1973,1972,1971,1970,1969,1968,1967,1966,1965,1964,1963,1962,1961,1960,1959,1958,1957,1956,1955,1954,1953,1952,1951,1950))
> plot(gdp.nat~year.date,data=finite)
> 
>  sparrow.lm=lm(pop.year~year.date,data=sparrow)
>  summary(sparrow.lm)

Call:
lm(formula = pop.year ~ year.date, data = sparrow)

Residuals:
     Min       1Q   Median       3Q      Max 
-3555706 -1192881    21971  1283683  2788315 

Coefficients:
              Estimate Std. Error t value Pr(>|t|)    
(Intercept) -4.484e+09  3.206e+07  -139.9   <2e-16 ***
year.date    2.379e+06  1.623e+04   146.5   <2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1 

Residual standard error: 1657000 on 48 degrees of freedom
Multiple R-squared: 0.9978,     Adjusted R-squared: 0.9977 
F-statistic: 2.148e+04 on 1 and 48 DF,  p-value: < 2.2e-16 

> 
> census.lm=lm(pop.year~gdp.nat,data=census)
> summary(census.lm)

Call:
lm(formula = pop.year ~ gdp.nat, data = census)

Residuals:
      Min        1Q    Median        3Q       Max 
-32435916  -9084973   2800352  11817680  16675413 

Coefficients:
             Estimate Std. Error t value Pr(>|t|)    
(Intercept) 1.810e+08  2.897e+06   62.49   <2e-16 ***
gdp.nat     1.252e+04  7.942e+02   15.76   <2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1 

Residual standard error: 14120000 on 48 degrees of freedom
Multiple R-squared: 0.8381,     Adjusted R-squared: 0.8347 
F-statistic: 248.4 on 1 and 48 DF,  p-value: < 2.2e-16 

> finite.lm=lm(gdp.nat~year.date,data=census)
Error in eval(expr, envir, enclos) : object 'year.date' not found
> finite.lm=lm(gdp.nat~year.date,data=finite)
> summary(fiite.lm)
Error in summary(fiite.lm) : object 'fiite.lm' not found
> summary(finite.lm)

Call:
lm(formula = gdp.nat ~ year.date, data = finite)

Residuals:
    Min      1Q  Median      3Q     Max 
-1261.0  -837.1  -163.4   748.2  2100.9 

Coefficients:
              Estimate Std. Error t value Pr(>|t|)    
(Intercept) -3.157e+05  1.878e+04  -16.82   <2e-16 ***
year.date    1.612e+02  9.509e+00   16.96   <2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1 

Residual standard error: 970.3 on 48 degrees of freedom
Multiple R-squared: 0.857,      Adjusted R-squared: 0.854 
F-statistic: 287.6 on 1 and 48 DF,  p-value: < 2.2e-16 

> summary(gdp.nat)
Error in summary(gdp.nat) : object 'gdp.nat' not found
> summary(finite)
    gdp.nat         year.date   
 Min.   : 293.7   Min.   :1950  
 1st Qu.: 549.2   1st Qu.:1962  
 Median :1428.1   Median :1974  
 Mean   :2643.1   Mean   :1974  
 3rd Qu.:4367.6   3rd Qu.:1987  
 Max.   :8694.6   Max.   :1999  
> 
> summary(sparrow)
    pop.year           year.date   
 Min.   :152271417   Min.   :1950  
 1st Qu.:187213752   1st Qu.:1962  
 Median :214913564   Median :1974  
 Mean   :214116747   Mean   :1974  
 3rd Qu.:241749910   3rd Qu.:1987  
 Max.   :272690813   Max.   :1999  
> 
> boxplot(sparrow)
> boxplot(finite)
> boxplot(census)
> pie(census)
Error in pie(census) : 'x' values must be positive.
> ?piechart
starting httpd help server ... done
> dotplot(census)
Error: could not find function "dotplot"
> 
> 
> 
> year=c(1999,1998,1997,1996,1995,1994,1993,1992,1991,1990,1989,1988,1987,1986,1985,1984,1983,1982,1981,1980,1979,1978,1977,1976,1975,1974,1973,1972,1971,1970,1969,1968,1967,1966,1965,1964,1963,1962,1961,1960,1959,1958,1957,1956,1955,1954,1953,1952,1951,1950)
> gdp=c(8694.6,8250.9,7762.3,7342.3,7017.5,6604.3,6286.8,5946.9,5757.2,5441.7,5063.9,4702.1,4427.7,4187.5,3902.6,3508.8,3229.5,3105.4,2768.9,2544.5,2276.9,2014.3,1809.8,1624.0,1486.4,1369.8,1225.4,1113.4,1025.0,973.39,901.46,825.06,780.76,712.08,656.91,611.67,579.75,539.05,520.53,526.4,506.6,467.2,461.1,437.4,414.7,380.4,379.3,358.3,339.3,293.7)
> pop=c(272690813,270248003,267783607,265228572,262803276,260327021,257782608,255029699,252153092,249464396,246819230,244498982,242288918,240132887,237923795,235824902,233791994,231664458,229465714,227224681,225055487,222584545,220239425,218035164,215973199,213853928,211908788,209896021,207660677,205052174,202676946,200706052,198712056,196560338,194302963,191888791,189241798,186537737,183691481,180671158,177829628,174881904,171984130,168903031,165931202,163025854,160184192,157552740,154877889,152271417)
> 
> boxplot(gdp)
> boxplot(pop)
> pop2=log(pop)
> boxplot(pop2)
> hist(pop)
> hist(gdp)
> hist(pop~gdp)
Error in hist.default(pop ~ gdp) : 'x' must be numeric
> hist(pop$gdp)
Error in pop$gdp : $ operator is invalid for atomic vectors
> 
> 
> plot(pop)
> plot(pop2)
> plot(gdp)
> 
