pop=c(272690813,270248003,267783607,265228572,262803276,260327021,257782608,255029699,252153092,249464396,246819230,244498982,242288918,240132887,237923795,235824902,233791994,231664458,229465714,227224681,225055487,222584545,220239425,218035164,215973199,213853928,211908788,209896021,207660677,205052174,202676946,200706052,198712056,196560338,194302963,191888791,189241798,186537737,183691481,180671158,177829628,174881904,171984130,168903031,165931202,163025854,160184192,157552740,154877889,152271417)
year=c(1999,1998,1997,1996,1995,1994,1993,1992,1991,1990,1989,1988,1987,1986,1985,1984,1983,1982,1981,1980,1979,1978,1977,1976,1975,1974,1973,1972,1971,1970,1969,1968,1967,1966,1965,1964,1963,1962,1961,1960,1959,1958,1957,1956,1955,1954,1953,1952,1951,1950)
gdp=c(8694.6,8250.9,7762.3,7342.3,7017.5,6604.3,6286.8,5946.9,5757.2,5441.7,5063.9,4702.1,4427.7,4187.5,3902.6,3508.8,3229.5,3105.4,2768.9,2544.5,2276.9,2014.3,1809.8,1624.0,1486.4,1369.8,1225.4,1113.4,1025.0,973.39,901.46,825.06,780.76,712.08,656.91,611.67,579.75,539.05,520.53,526.4,506.6,467.2,461.1,437.4,414.7,380.4,379.3,358.3,339.3,293.7)
#GDP is in billions
plot(pop~year)
inform.lm=lm(pop~year,data=inform)
summary(inform.lm)

anova(inform.lm)

> sparrow.new=data.frame(age.days=3:17)
> sparrow.predict=predict(sparrow.lm,newdata=sparrow.new,se.fit=T)
> lines(sparrow.new$age.days,sparrow.predict$fit,lwd=3)
> lines(sparrow.new$age.days,sparrow.predict$fit+2*sparrow.predict$se.fit,lwd=3,col=8)
> lines(sparrow.new$age.days,sparrow.predict$fit-2*sparrow.predict$se.fit,lwd=3,col=8)
> 
> 
> age.days=data.frame(age.days=7)
> predict(sparrow.lm,newdata=age.days,se.fit=T,interval="cofidence",level=0.95)
Error in match.arg(interval) : 
  'arg' should be one of “none”, “confidence”, “prediction”
> predict(sparrow.lm,newdata=age.days,se.fit=T,interval="confidence",level=0.95)
$fit
       fit      lwr      upr
1 2.604698 2.444344 2.765051

$se.fit
[1] 0.07285516

$df
[1] 11

$residual.scale
[1] 0.2184052

> 
> b0=.71309
> b1=.27023
> x.h=7
> 
> yhat.h=b0+b1*x.h
> 
> n=13
> mse=19.1322
> 
> SSE=sum((sparrow$age.days-mean(sparrow$age.days))^2)
> n=13
> mse=.0477
> SSE=sum((sparrow$age.days-mean(sparrow$age.days))^2)
> sd.yhat.h=(mse*(1/n+((x.h-mean(sparrow$age.days))^2)/SSE))^(1/2)
> t.975=qt(0.975,sparrow.lm$df)
> c(yhat.h-(t.975)*sd.yhat.h,yhat.h+(t.975)*sd.yhat.h)
[1] 2.444348 2.765052
> 
> 
> b0=.71309
> b1=.27023
> x.h=7
> yhat.h=b0+b1*x.h
> n=13
> mse=.0477
> 
> SSE=sum((sparrow$age.days-mean(sparrow$age.days))^2)
> sd.yhat.hnew=(mse*(1+1/n+((x.h-mean(sparrow$age.days))^2)/SSE))^(1/2)
> t.975=qt(0.975,sparrow.lm$df)
> c(yhat.h-(t.975)*sd.yhat.hnew,yhat.h+(t.975)*sd.yhat.hnew)
[1] 2.097958 3.111442
> 

