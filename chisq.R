#chi sqaure

chisq.test(a)
a<-table(mtcars$carb,mtcars$cyl)

MASS
str(Cars93)

chisq.test(Cars93$AirBags,Cars93$Type)
a<-table(Cars93$AirBags,Cars93$Type)
a
chisq.test(a)


tulip<-c(81,50,27)
chisq.test(tulip, p=c(1/3,1/3,1/3))



table<-matrix(c(120,90,40,110,95,45),ncol=3, byrow = T)
rownames(table)=c("Male","Female")
colnames(table)=c("rep","demo","ind")
table
chisq.test(data_table)



d<-read.csv("vote.csv")
d
data_table <- as.table(as.matrix(d[, -1]))
data_table


Obs_freq<-c(50,60,40,47,53)
chisq.test(Obs_freq,p=c(rep(1/5,5)))



Obs_freq <- c(50, 60, 40, 47, 53)
Exp_freq <- c(rep(50, 5))

# Perform Chi-Square Goodness-of-Fit Test
result <- chisq.test(Obs_freq, p = c(1/5, 1/5, 1/5, 1/5, 1/5), simulate.p.value = TRUE)
print(result)

           