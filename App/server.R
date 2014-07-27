mcars <- read.csv(file="../mtcars.csv")
mcars[mcars$am ==0,c("tm")] <- gsub("0", "automatic", mcars[mcars$am ==0,c("am")])
mcars[mcars$am ==1,c("tm")] <- gsub("1", "manual", mcars[mcars$am ==1,c("am")])
mcars$tm <- as.factor(mcars$tm)
carsfit <- lm(mpg ~ tm+wt+hp-1, data = mcars)



mpg <- function(f_hp,f_wt,f_tm) 
{
  predict(carsfit,newdata=data.frame(tm=f_tm,wt=f_wt,hp=f_hp))
}

shinyServer(
  function(input, output) 
  {
    output$prediction <- renderPrint({mpg(input$hp,input$wt/1000,input$tm)})
  }
)