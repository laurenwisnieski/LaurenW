#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
  
  # Application title
  fluidRow(
    column(3, 
           titlePanel("Old Faithful Geyser Data")) , 
    tags$img(src = "https://th.bing.com/th/id/OIP.x2s6ljznyAeATppifNstuwHaLH?w=126&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7")
  ) , 
  
  
  # Sidebar with a slider input for number of bins 
  fluidRow(
    column(3, 
           wellPanel(
             sliderInput("bins",
                         "Number of bins:",
                         min = 1,
                         max = 50,
                         value = 30))
    ),
    
    # Show a plot of the generated distribution
    column(9, 
           tabsetPanel(
             tabPanel("Plot",
                      plotOutput("distPlot")
             ),
             tabPanel("Plot2",
                      plotOutput("distPlot2")
             ))
    )
  ), 
  
  fluidRow(
    column(4, 
           tags$footer("Lauren Wisnieski")) , 
    column(4, 
           tags$a(href= "mailto:lauren.wisnieski@lmunet.edu", "Email me" )) , 
    column(4, 
           tags$a(href= "https://www.linkedin.com/in/lauren-wisnieski", "LinkedIn Profile",  target="_blank")))
  
  
)
