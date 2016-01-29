shinyUI(pageWithSidebar(
  headerPanel('Black Cherry Trees plot'),
  sidebarPanel(
    selectInput('xcol', 'X Variable', 
                choices = names(trees),
                selected='Height'),
    selectInput('ycol', 'Y Variable', 
                choices = names(trees),
                selected='Volume')
  ),
  mainPanel(
    tabsetPanel(
      tabPanel("Plot", plotOutput("plot1")),
      tabPanel("Documentation", includeMarkdown("Documentation.Rmd"))
    )
  )
))