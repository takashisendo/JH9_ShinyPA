# JH_Unit9_week4_PA
library(shiny)
shinyServer(function(input, output) {
    output$plot1 <- renderPlot({
        a <- switch(input$x1,
                    "cyl"=mtcars$cyl,
                    "disp"=mtcars$disp,
                    "hp"=mtcars$hp,
                    "drat"=mtcars$drat,
                    "wt"=mtcars$wt,
                    "qsec"=mtcars$qsec)
        model <- lm(mtcars$mpg~a)
        plot(a,mtcars$mpg, ylab="Miles par Gallon(MPG)",xlab=input$x1,mbty = "n", pch = 16)
        if(input$showModel){
            abline(model, col = "red", lwd = 2)
        }
    })
})