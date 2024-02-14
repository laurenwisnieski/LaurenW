#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
fluidPage(
  
  # Application title
  titlePanel("Ye Very very Old Faithful Geyser Data"),
  
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    position = c("right") , 
    sidebarPanel(
      sliderInput("bins",
                  "Bins (#):",
                  min = 1,
                  max = 70,
                  width = "75%",
                  value = 30) , 
    ) ,
    
    
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
      
    ))
)