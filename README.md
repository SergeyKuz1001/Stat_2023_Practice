---
title: "HW_1_Practice"
author: "Sergey Kuzivanov"
date: "2023-03-10"
output: html_document
---



# Моделирование теоремы Гливенко-Кантелли

Создадим функцию, которая будет рисовать на графике эмпирическую функцию распределения и реальную функцию распределения для распределения `dist_name` с функцией распределения `dist_F` и генератором `n` случайных значений по этому распределению `dist_G`.


```r
cdf_plot <- function(dist_name, dist_F, dist_G, n) {
  x_n   <- dist_G(n)
  x_min <- min(x_n)
  x_max <- max(x_n)
  step  <- (x_max - x_min) / 1000
  start <- x_min - 150 * step
  end   <- x_max + 150 * step
  plot(ecdf(x_n), main = paste0("CDF, ", dist_name, " distribution, n = ", n))
  lines(seq(start, end, by=step), dist_F(seq(start, end, by=step)), col="blue")
}
```

Теперь мы готовы посмотреть на графики эмпирических и реальных функций распределения для различный распределений.

## Нормальное распределение


```r
cdf_plot("N(0, 1)", pnorm, rnorm, 10)
```

![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2-1.png)


```r
cdf_plot("N(0, 1)", pnorm, rnorm, 30)
```

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3-1.png)


```r
cdf_plot("N(0, 1)", pnorm, rnorm, 100)
```

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4-1.png)


```r
cdf_plot("N(0, 1)", pnorm, rnorm, 300)
```

![plot of chunk unnamed-chunk-5](figure/unnamed-chunk-5-1.png)



```r
cdf_plot("N(0, 1)", pnorm, rnorm, 1000)
```

![plot of chunk unnamed-chunk-6](figure/unnamed-chunk-6-1.png)

## Равномерное распределение


```r
cdf_plot("U(0, 1)", punif, runif, 10)
```

![plot of chunk unnamed-chunk-7](figure/unnamed-chunk-7-1.png)


```r
cdf_plot("U(0, 1)", punif, runif, 30)
```

![plot of chunk unnamed-chunk-8](figure/unnamed-chunk-8-1.png)


```r
cdf_plot("U(0, 1)", punif, runif, 100)
```

![plot of chunk unnamed-chunk-9](figure/unnamed-chunk-9-1.png)


```r
cdf_plot("U(0, 1)", punif, runif, 300)
```

![plot of chunk unnamed-chunk-10](figure/unnamed-chunk-10-1.png)


```r
cdf_plot("U(0, 1)", punif, runif, 1000)
```

![plot of chunk unnamed-chunk-11](figure/unnamed-chunk-11-1.png)
