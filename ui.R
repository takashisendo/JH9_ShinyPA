# JH_Unit9_week4 PA

library(shiny)
shinyUI(fluidPage(
        titlePanel("MPG plot by a variable selected:"),
        h3('This small Shiny application allows you to change independent(exploratory) variables (to be selected in the radio botons, that affects MPG. Also it creates a linear model of MPG to the selected variable. Fitted model can be visible or not visible, accordig to the check box.'),
        sidebarLayout(
            sidebarPanel(
                radioButtons("x1", "Choose x variable for a linear model:",
                             c("# Cylinder" = "cyl",
                               "Disp" = "disp",
                               "HP" = "hp",
                               "drat" = "drat",
                               "weight"="wt",
                               "qsec"="qsec")),
                checkboxInput("showModel", "Show/Hide Model",value = TRUE)
            ),
            mainPanel(
                h3("MPG explained by a variable"),
                plotOutput("plot1")
            )
        )
    ))