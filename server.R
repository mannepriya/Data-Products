EMIcalc<-function(principal,interest,months) {
      EMI<-((principal*interest/1200)*(1+interest/1200)^months)/((1+interest/1200)^months-1)
      if(principal<0) print("please enter a positive value for principal")
     else if(months<=0) print("please enter a positive value for No of Months")
    else  return(round(EMI,1))
}
shinyServer(
        function(input,output){
                output$inputprincipal<-renderPrint({input$principal})
                output$inputinterest<-renderPrint({input$interest})
                output$inputmonths<-renderPrint({input$months})
                output$EMI<-renderPrint({EMIcalc(input$principal,input$interest,input$months)})
        })