shinyUI(pageWithSidebar(
  headerPanel('Tukey Outlier Detection on Gamma Distribution'),
  sidebarPanel(
    numericInput('gshape', 'Gamma Shape Parameter', 1, min = 0, max = 1000),
    numericInput('gscale', 'Gamma Scale Parameter', 1, min = 0, max = 1000),
    sliderInput('numPts', 'Sample Size', min=100, max=1000000, value=10000,
                      step = 100),
    sliderInput('tCoef', 'Tukey Scale Parameter', min = 1.5, max = 10, value=1.5, step = 0.1)
  ),
  mainPanel(
    plotOutput('plot1')
  )
))
