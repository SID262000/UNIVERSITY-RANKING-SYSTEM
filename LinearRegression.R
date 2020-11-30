dataset <- read.csv("cwurData.csv")
plot.new()
pred_lm <- predict(model,dataset)
plot(dataset$world_rank,pred_lm)
plot.x <- seq(0,max(dataset$world_rank),max(dataset$world_rank)/(100-1))
lines(plot.x,plot.x,col="red")
library(boot)
set.seed(42)
model <- glm(world_rank~influence+quality_of_education+quality_of_faculty, data=dataset)
cv.err <- cv.glm(dataset, model, K = 10)$delta
cat('CV-MSE using Linear regression =',cv.err[2])
#CV-MSE using Linear regression = 16768.29
