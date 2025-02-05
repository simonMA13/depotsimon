#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)

# Define UI for application that draws a histogram
fluidPage(
  img(src = "wini.png", height = "300px", width = "300px"),

    # Application title
    titlePanel("Old Faithful Geyser Data"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30),
            selectInput( "couleur", "choisir couleur",choices = c("red","purple","yellow")),
            textInput("mytexte","expliquez le choix de division et de couleur",value=" ici"),
            selectInput("groupe", label = "quel est votre groupe : "
                        , choices = c("G1" = 1, "G2" = 2, "G3" = 3, "G4"=4))
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot"),
            textOutput("texte"),
            textAreaInput("réponse","votre réponse", rows = 2),
            dateInput(inputId = "idDate", label = "entrez la date",
                     value = "yyyy/mm/dd", format = "yyyy/mm/dd", startview = "month",
                     weekstart = 0, language = "fr"),
            actionButton(inputId = "idActionButton", label = "Click !",
                         icon = icon("hand-spock-o"))
            
        )
    )
)
