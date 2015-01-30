suppressPackageStartupMessages(library(ggvis))

toolTipFunc <- function(value) {
  function(y) {
    if (is.null(y)) return(NULL)
    else {
      length(value[(value >= y$xmin_) & (value < y$xmax_)])
    }
  }
}

limit_widget <- function() {
  shinyApp(
    
    ui = fluidPage(
      
      fluidRow(column(8,
                      plotOutput("plot",height="300px", width="600px"))),
      fluidRow(column(4,
                      sliderInput("limits", "Adjust limits", -10, 10, value=c(-10,10), step=0.5)),
               column(4,
                      sliderInput("s", "Standard deviation", 0.5, 4, value=2.3, step=0.1)))
    ),
    
    server = function(input, output) {
      
      data <- reactive({
        rnorm(500,0,as.numeric(input$s))
      })
      
      output$plot <- renderPlot({
        data <- data()
        limits <- as.numeric(input$limits)
        n_above <- length(data[data >= limits[2]])
        if (n_above > 0) data[data >= limits[2]] <- runif(n_above, limits[2] - 1.8, limits[2])
        n_below <- length(data[data <= limits[1]])
        if (n_below > 0) data[data <= limits[1]] <- runif(n_below, limits[1], limits[1] + 1.8)
        qplot(data, geom="histogram", 
              binwidth=1, colour=I("black"), fill = I("#333333")) + 
          xlab("") +
          geom_vline(xintercept=c(limits[1], limits[2]), colour="#AAAAAA", linetype = "longdash", size=2) +
          theme(panel.grid.major = element_line(colour = "#CCCCCC"),
                panel.grid.minor = element_line(colour = "#CCCCCC"),
                panel.background = element_rect(fill = "white"),
                axis.ticks = element_line(colour = "black"),
                axis.text = element_text(colour = "black", size = 11),
                axis.title = element_text(face = "bold"),
                axis.line = element_line(colour = "black"),
                axis.line.x = element_blank()) +
          scale_y_continuous(expand = c(0, 0)) +
          scale_x_continuous(limits=c(-10,10))
      })
    }    
)}