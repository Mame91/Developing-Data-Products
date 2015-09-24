library(shiny)

shinyUI(fluidPage(
        title = "Developing Data Products - Project",
        h4('Developing Data Products - Project'),
        h5('Manuel Meretto - September 24th 2015'),
        plotOutput('plots', height = 300),
        h5('Predictor values:'),
        verbatimTextOutput("inputValues"),
        h5('MPG Prediction:'),
        verbatimTextOutput("prediction"),
        hr(),
        h4('Enter the predictors values:'),
        fluidRow(
                column(3,
                       numericInput('hp', 'Gross horsepower:', 140, min = 50, max = 330, step = 10) 
                ),
                column(4, offset = 1,
                       radioButtons('cyl', 'Number of cylinders:', c('4' = 4, '6' = 6, '8' = 8), selected = '4', inline = TRUE)
                ),
                column(4,
                       numericInput('wt', 'Weight (lbs):', 3200, min = 1500, max = 5500, step = 100)
                )
        ),
        h4('Approach'),
        p('I fit a linear model to the mtcars dataset, modeling the effect of horsepower, number of cylinders, and weight on the MPG. 
        Radio buttons are used to set the number of cylinders (4, 6 and 8). A linear model is used to predict the MPG based on the varibables chose by the user.')
))