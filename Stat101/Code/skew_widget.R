suppressPackageStartupMessages(library(ggplot2))

skew_widget <- function() {
  shinyApp(
    
    ui = fluidPage(
      
      fluidRow(column(8,
                      plotOutput("plot", height="300px", width="600px"))),
      fluidRow(column(8,
                      sliderInput("skewness", "Adjust skew", -4.5, 4.5, value=0, step=0.5)))
    ),
    
    server = function(input, output) {
      
      skew <- reactive({
        theta <- c(10, 10)
        skewness <- as.numeric(input$skewness)
        if (skewness < 0) {
          beta <- 10 + skewness * 2
          theta[2]  <- beta
        } else if (skewness > 0) {
          alpha <- 10 - skewness * 2
          theta[1] <- alpha
        } 
        return(theta)
      })
      
      output$plot <- renderPlot({
        theta <- skew()
        x <- rbeta(1000, theta[1], theta[2])
        mu <- mean(x)
        mid <- median(x)
        qplot(x, geom="histogram", 
              binwidth=0.05, colour=I("black"), fill = I("#333333")) + 
          xlab("") +
          geom_vline(xintercept=c(mu, mid), colour=c('blue',"green"), linetype = "longdash", size=0.75) +
          theme(panel.grid.major = element_line(colour = "#CCCCCC"),
                panel.grid.minor = element_line(colour = "#CCCCCC"),
                panel.background = element_rect(fill = "white"),
                axis.ticks = element_line(colour = "black"),
                axis.text = element_text(colour = "black", size = 11),
                axis.title = element_text(face = "bold"),
                axis.line = element_line(colour = "black"),
                axis.line.x = element_blank()) +
          scale_y_continuous(expand = c(0, 0))
      })
      
#       gv <- reactive({
#         theta <- skew()
#         x <- rbeta(1000, theta[1], theta[2])
#         df <- data.frame(x)
#         df %>% ggvis(~x) %>% 
#           layer_histograms(width = 0.05)
#       })
      
      #gv %>% bind_shiny("plot")  
    }
  )
}