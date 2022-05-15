path <- "C:/Users/Aryan/Desktop/Stats Project/La Liga Training Data.csv"
mydata <- read.csv(path,header = TRUE)
mydata[,-5]
print(head(mydata))
model <- lm(Points~GF+GA+PASS+POSS+Shot.On.Target+SAVE, data=mydata)
summary(model)
anova(model)
res=residuals(model)
print(res)
