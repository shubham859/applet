
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#


library(shiny)
library(shinyMatrix)

A <- matrix(rep(1, 9), 3, 3)
B <- matrix(rep(1, 9), 3, 3)

shinyUI(pageWithSidebar(
    headerPanel("Input Matrices"),
    sidebarPanel(
        h5('Matrix A'),
        matrixInput(
            "A",
            value = A,
            rows = list(
                extend = TRUE
            ),
            cols = list(
                names = TRUE
            ),
            class = "numeric"
        ),
        h5('Matrix B'),
        matrixInput(
            "B",
            value = B,
            rows = list(
                extend = FALSE
            ),
            cols = list(
                names = FALSE
            ),
            class = "numeric"
        )
    ),
    mainPanel(
        h4('Matrix A * B'),
        uiOutput('matrix'),
        br(),
        helpText("This application is designed to allow users to quickly calculate the matrix multiplication of standard three by three matrices.")
    )
))