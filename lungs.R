#import data
lungs = read.csv("LungCapData1.csv")

View(lungs)
#scatter plot of lung capacity vs age
plot(Age,LungCap)
attach(lungs)
#fit the model 
model = lm(LungCap~Age)

#statistical summary of our model. p value small enough to reject our null hypothesis
summary(model)

#least squares regression line
abline(model, lwd=3, col="Blue")

#95% confidence intervals
confint(model, level=0.95)

#analysis of variance table
anova(model)
