#anova

data<-read.csv("PlantGrowth.csv")
data
shapiro.test(data$weight)
boxplot(data$weight~data$group)
leveneTest(data$weight~as.factor(data$group))
a=aov(data$weight~data$group)
summary(a)
TukeyHSD(a)

mtcars

anovmt<-aov(mtcars$mpg~mtcars$cyl)
summary(anovmt)
anovmt<-aov(mtcars$mpg~mtcars$cyl*mtcars$gear)


score<-read.csv("score.csv")
score
shapiro.test(score$marks)
boxplot(score$marks~score$gender)
boxplot(score$marks~score$study.level)
leveneTest(score$marks~as.factor(score$gender))
leveneTest(score$marks~as.factor(score$study.level))

result<-aov(marks~gender, data = score)
summary(result)
result<-aov(marks~study.level, data = score)
summary(result)


#two anova
result<-aov(marks~gender+study.level, data = score)
summary(result)

#USNG ANOVA (LINEAR MODEL)
model<-lm(marks~gender, data = score)
model
anova(model)
