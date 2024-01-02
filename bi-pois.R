#normal distrubution

a<-pnorm(70,50,15)
b<-pnorm(50,50,15)
a-b

pnorm(100,90,10, lower.tail = F)


pnorm(40,30,4)
pnorm(21,30,4,lower.tail = F)
pnorm(35,30,4)-pnorm(30,30,4)
qnorm(21,30,4)
#3.	Entry to a certain University is determined by a national test. The scores on this test are normally distributed with a mean of 500 and a standard deviation of 100. Tom wants to be admitted to this university and he knows that he must score better than at least 70% of the students who took the test. Tom takes the test and scores 585. Will he be admitted to this university?

pnorm(585,500,100)

### pois
dpois(15,10)

ppois(3,5)


sum(dpois(0:3,5))
x<-c(1:10)
y<-(dnorm(x,10,1))
y
hist(x,y,breaks = 10)

# Given parameters
mean_act = 21
sd_act = 5

# Generate a random sample of ACT scores (replace this with your actual data)
set.seed(123)  # for reproducibility
act_scores <- rnorm(1000, mean = mean_act, sd = sd_act)

# Plot a histogram
hist(act_scores, breaks = 20, col = "skyblue", main = "Distribution of ACT Scores", xlab = "ACT Scores", ylab = "Frequency")


#binom

dbinom(7,10,0.8)


1-pbinom(1,4,0.8, lower.tail = F)
pbinom(3,4,0.2, lower.tail = F)

pbinom(2,10,0.12, lower.tail = F)
sum(dbinom(2:10,10,0.12))


dbinom(2,5,2/3)
1-pbinom(2,5,2/3 )
sum(dbinom(3:5,5,2/3))


dbinom(3,10,1/4)
pbinom(0,10,1/4 ,lower.tail = F)
sum(dbinom(1:10,10,1/4))
