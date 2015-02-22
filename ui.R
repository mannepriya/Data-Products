library(shiny)
shinyUI(
        pageWithSidebar(
                headerPanel("EMI Calculator"),
                sidebarPanel(
                        helpText("This app is for calculating the Equated Monthly Payments (EMI) to be made
                               to the lender on availing a Loan facility under EMI mechanism.
                                 The app requires key Details regarding the Loan such as principal, interest rate and Tenure of the Loan 
                                 for calculating the EMI amounts"),
                        helpText("Kindly fill in the below fields with positive values for calculating the EMI"),
                        numericInput('principal','Principal in $',100000,min=0),
                        sliderInput('interest','interets rate in %',min=0,max=100,value=10),
                        numericInput('months','Loan period in No of Months',60,min=1,max=200,step=1),
                        submitButton('Submit')
                ),
                mainPanel(
                        h3('EMI Calculation'),
                        h4('you entered'),
                        h5('Principal $ :'),
                        verbatimTextOutput("inputprincipal"),
                        h5('Interest rate %:'),
                        verbatimTextOutput("inputinterest"),
                        h5('Loan period:'),
                        verbatimTextOutput("inputmonths"),
                       
                        h4('Required EMI to be paid per month is $'),
                        verbatimTextOutput("EMI")
                )
        )
)