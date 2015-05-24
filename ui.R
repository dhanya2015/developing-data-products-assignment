library(shiny)

data(mtcars)

shinyUI (
  fluidPage (
    title = "Motor Trend analysis",
    h1("Motor Trend analysis"),
    fluidRow (
      column (
        5,
        h3('Data'),
        p (
          paste (
            'The data was extracted from the 1974 Motor Trend',
            'US magazine, and comprises fuel consumption and 10',
            'aspects of automobile design and performance for 32',
            'automobiles (1973-74 models). It is a data frame with',
            '32 observations on 11 variables.'
'
          )
        ),
        br(),
        tableOutput('data'),
        p (
          br(),
          paste (
            'Choose one variable.' 
            
          )
        )
      ),
      column (
        5,
        offset = 1,
        verbatimTextOutput('fit')
      )
    ),
    fluidRow (
      column (
        2,
        checkboxGroupInput (
          "predictors",
          "Choose predictor(s):",
          names(mtcars)[-11]
        )
      ),
      column (
        3,
        plotOutput('plot1')
      ),
      column (
        3,
        plotOutput('plot2')
      ),
      column (
        3,
        plotOutput('plot3')
      )
    )
  )
)