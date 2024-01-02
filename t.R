#create vectors to hold plant heights from each sample
group1 <- c(8, 8, 9, 9, 9, 11, 12, 13, 13, 14, 15, 19)
group2 <- c(11, 12, 13, 13, 14, 14, 14, 15, 16, 18, 18, 19)

#perform two sample t-test
t.test(group1, group2)

Wt<-c(67,58,54,78,80,63,52,50,76,69,72,51,73,65)
Gender<-c('M','F','F','M','F','F','F','M','M','M','M','F','M','M')

typeof(Wt)
typeof(Gender)
Gender=factor(Gender)

shapiro.test(Wt)
shapiro.test(Gender)
boxplot(Wt~Gender)
leveneTest(Wt~Gender)
t.test(Wt ~ Gender, alternative = 'two.sided', alpha = 0.05)

set.seed(150)
data <- data.frame(Value = rnorm(30, mean = 50, sd = 10))
data
       


set.seed(100)
before<-c(rnorm(20, mean=10, sd=1))
after<-c(rnorm(20, mean=20, sd=1))
shapiro.test(before)
t.test(data,alpha=0.05,)
shapiro.test(after)

boxplot(before)
t.test(before,after)



height<-c(100,120,130,100,140)
gender<-c('F','F','M','M','M')
gender=factor(gender)
shapiro.test(height)
leveneTest(height~gender)

t.test(height~gender,apha=0.05, alternative = "two.sided")
