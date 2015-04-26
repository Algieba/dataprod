shinyUI(pageWithSidebar(
  headerPanel('Tukey Outlier Detection on Exponential Distribution'),
  sidebarPanel(
    sliderInput('lambda', 'Exponential Lambda Parameter', min = 0.0001,
                 max = 1.0001, value=1, step=0.0001 ),
    sliderInput('numPts', 'Sample Size', min=100, max=1000000, value=10000,
                      step = 100),
    sliderInput('tCoef', 'Tukey Scale Parameter', min = 1.5, max = 10, value=1.5, step = 0.1)
  ),
  mainPanel(
    plotOutput('plot1')
  )
))
