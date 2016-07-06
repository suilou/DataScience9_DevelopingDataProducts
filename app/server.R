

if("RcppRoll" %in% rownames(installed.packages()) == FALSE) {install.packages("RcppRoll")}
library(RcppRoll)

shinyServer(  
  function(input, output) {    
    # load S&P500 data
    # Source: https://fred.stlouisfed.org/series/SP500/downloaddata
    # Last access on 6/23/2016
    
    output$newMv <- renderPlot({
      data <- read.csv("SP500.txt", sep="", skip = 36, colClasses=c("POSIXct","numeric"), header=F, col.names=c("Date","Value"), na.strings=c("#N/A",0))
      
      attach(data)
      # moving average for trading days
      n=input$n # window length
      mv <- roll_mean(Value, n=n, na.rm=T)
      myTitle <- sprintf("%s-Day Moving Average", as.character(n))
      
      # plot raw data and moving average
      plot.new()
      plot(Date, Value, col="red", ylab="S&P500")
      text(x=,y=,"Raw Data",col="red")
      lines(Date[n:length(Date)], mv, lwd=5, col="blue")
      text(c(Date[200],Date[350]),c(max(Value,na.rm=T)-50,max(Value,na.rm=T)-200),
           c("Raw Data", "Moving Average"),col=c("red", "blue"), cex=1.5)
      
      detach(data)
      
    })  
    
    
    
    }
)
