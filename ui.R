# ui.R
library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Growth Model"),
  sidebarPanel(
    sliderInput("K", "Capaty:",
                min = 0, max = 100, value = 10),
    
    sliderInput("r", "rate (r):",
                min = 0, max = 1, value = 0.2, step = 0.05),
    
    sliderInput("t", "time:",
                min = 0, max = 1, value = c(0.4, 0.6), step = 0.05),
    
    sliderInput("P_init", "Initial Population:",
                min = 0, max = 100, value = 5)
  ),
  mainPanel(

    p('K * P * e^(rt): '),
    textOutput('text1'),
    br(),
    p('K + P * ((e^(rt))-1): '),
    textOutput('text2'),
    br(),
    p('K * P * e^(rt) / K + P * ((e^(rt))-1)'),
    textOutput('text3')
    
  )
))

