shinyServer(function(input, output) {

  output$plot1 <- renderPlot({
      lambda <- as.numeric(input$lambda)
      lambda <- max(lambda,0.0001)
      numPts <- as.numeric(input$numPts)
      uicoef <- as.numeric(input$tCoef)
      evalues <- rexp(numPts,rate=lambda)
      vLineVal <- min(c(boxplot.stats(evalues,coef=uicoef)$out,
                        max(evalues)))
      pGTvLine <- round(1 - pexp(vLineVal,rate=lambda),3)
      hist(evalues,breaks=100, xlab="Data",ylab="Counts",
           main=paste('Pr > limit ', pGTvLine, sep=''))
      abline(v=vLineVal,col="orange")

  })
})
