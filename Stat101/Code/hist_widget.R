suppressPackageStartupMessages(library(ggvis))

toolTipFunc <- function(value) {
  function(y) {
    if (is.null(y)) return(NULL)
    else {
      length(value[(value >= y$xmin_) & (value < y$xmax_)])
    }
  }
}

hist_widget <- function(data) {
  shinyApp(
    
    ui = fluidPage(
      
      fluidRow(column(8,
        ggvisOutput("plot"))),
      fluidRow(column(8,
        sliderInput("binwidth_adjust", "Adjust binwidth", 0.2, 2, value=1.5, step=0.1)))
    ),
    
    server = function(input, output) {
      
      gv <- reactive({
        df <- data.frame(data)
        #binwidth <- input_slider(0, 2, value = 1, step = 0.1)
        binwidth <- input$binwidth_adjust
        df %>% ggvis(~data) %>% 
          add_tooltip(toolTipFunc(df$data), "hover") %>% 
          layer_histograms(width = binwidth) %>%
          add_axis("x", title = "")
      })
      
      gv %>% bind_shiny("plot")  }
    )
}