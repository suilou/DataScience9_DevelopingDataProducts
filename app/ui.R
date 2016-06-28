library(shiny)


shinyUI(pageWithSidebar(  
  titlePanel("Moving Average Plot of S&P500 (6/22/2006-6/22/2016)"),  
  sidebarPanel(    
    sliderInput('n', 'Window Size (Days)', value = 60, min = 1, max = 360, step = 1),
    br(),
    p(strong(em("Documentation:",a("Moving Average of S&P500",href="https://github.com/suilou/DataScience9_DevelopingDataProducts/blob/master/README.md")))),
    p(strong(em("Github repository:",a("Developing Data Products - Peer Assessment Project; Shiny App",href="https://github.com/suilou/DataScience9_DevelopingDataProducts"))))
  
  ), 
  mainPanel(    
    plotOutput('newMv')  
  )
))