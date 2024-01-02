x<-c(1,2,3,4,5,6)
y<-c(0,4,5,0,0,0)
cor(x,y, method = "pearson")

cor.test(x,y, method = "pearson")


auto=read.csv("Auto.csv")
auto

cor(auto$mpg,auto$weight)
cor.test(auto$mpg,auto$weight, method = "pearson")



price=c(10,20,30,40,50,60,70)
supply=c(8,6,14,16,10,20,24)
shapiro.test(price)
shapiro.test(supply)
cor.test(price,supply)


height=read.csv("height.csv")
shapiro.test(height$father)
shapiro.test(height$daughther)
cor.test(height$father,height$daughther, conf.level = 1)



price=c(10,20,30,40,50,60,70,80)
supply=c(8,6,14,16,10,20,24,20)
covar<-cov(price,supply)
cov2cor(covar)

a <- c(2,4,6,8) 

b <- c(1,11,3,33) 

covar = cov(a,b)
print(covar)

res = cov2cor(covar)
print(res)


# Create vectors
price1 <- c(10, 20, 30, 40, 50, 60, 70)
supply1 <- c(8, 6, 14, 16, 10, 20, 24)
minus<-price1-supply1
minus

matrix<-cbind(price1,supply1,minus)
matrix

co<-cov(matrix)
cov2cor(co)


ind<-c(1,2,3,4,5)
dep<-c(3,6,8,11,14)

model<-lm(dep~ind)
predict(model,c(6))

data<-data.frame(x<-c(6,7))
predict(model,data)        


df<-data.frame(ind=ind,dep=dep)
df
model<-lm(dep~ind)
model

newdf<-data.frame(ind=c(5))
predict(model,newdf)


df1<-data.frame(ind=c(1,2,3,4,5),dep=c(1,4,9,16,25))
model<-lm(dep~ind, data=df1)
model
summary(model)

newdf1<-data.frame(ind=c(6))
predict(model,newdata =newdf1)


df1 <- data.frame(ind = c(1, 2, 3, 4, 5), dep = c(1, 4, 9, 16, 25))

# Fit a linear regression model
model <- lm(dep ~ ind, data = df1)

# Create a new data frame with the same column names as in df1
newdf1 <- data.frame(ind = c(6))

# Use the predict function
predictions <- predict(model, newdata = newdf1)

# Print the predictions
print(predictions)

