library(shiny)

shinyUI (pageWithSidebar(
        headerPanel("Child's height predictor"),
        sidebarPanel(
                numericInput(inputId="inp1", label = "Mother's height in cm",""),
                numericInput(inputId="inp2", label = "Father's height in cm", ""),
                radioButtons(inputId="gen", label="Child's Gender:", c("Boy"="Boy", "Girl"="Girl")),
                actionButton("goButton", "Calculate"),
               
                p(''),
                p("To use this app, you need to enter the parents heights and then choose the child's gender. Click the Calculate button and you will get the result."),
                p('')
                
        ),
        mainPanel (
                textOutput('gen'),
                tableOutput( 'out')
        )
))