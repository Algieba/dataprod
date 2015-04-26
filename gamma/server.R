shinyServer(function(input, output) {

  output$plot1 <- renderPlot({
  	       gshape <- as.numeric(input$gshape)
	       gscale <- as.numeric(input$gscale)
	       numPts <- as.numeric(input$numPts)
	       uicoef <- as.numeric(input$tCoef)
	       gvalues <- rgamma(numPts,gshape,scale=gscale)
               vLineVal <- min(c(boxplot.stats(gvalues,coef=uicoef)$out,
                                 max(gvalues)))
               pGTvLine <- round(1 - pgamma(vLineVal,gshape,scale=gscale),3)
                   hist(gvalues,breaks=100, xlab="Data",ylab="Counts",
                        main=paste('Pr > limit ', pGTvLine, sep=''))
	       abline(v=vLineVal,col="orange")

  })
})
