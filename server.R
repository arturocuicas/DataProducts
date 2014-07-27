# server.R
library(shiny)

shinyServer(function(input, output) {
  e <- 2.72
  K <- reactive({as.numeric(input$K)})
  P <- reactive({as.numeric(input$P_init)})
  rt <- reactive({as.numeric(input$r)*as.numeric(input$t)})
  ert <- reactive({e^rt()})
  ertp <- reactive({ert()-1})
  
  output$text1 <- renderText({K() * P() * ert()})
  
  output$text2 <- renderText({K() + P() * ertp()})
  
  output$text3 <- renderText({
    (K() * P() * ert())/(K() + P() * ertp())
  })

})