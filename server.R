library(shiny)
findResult <- function (qr1="E",qr2="E",qr3="E",qr4="E",qr5="E",qr6="E",qr7="E",qr8="E",qr9="E",qr10="E") {
  ans0 <- c(0,0,0,0,0)
  ans0 <- calc(qr1,ans0)
  ans0 <- calc(qr2,ans0)
  ans0 <- calc(qr3,ans0)
  ans0 <- calc(qr4,ans0)
  ans0 <- calc(qr5,ans0)
  ans0 <- calc(qr6,ans0)
  ans0 <- calc(qr7,ans0)
  ans0 <- calc(qr8,ans0)
  ans0 <- calc(qr9,ans0)
  ans0 <- calc(qr10,ans0)
  
  TypeA <- paste("You are a leader. You are usually the bosses at work. or at least you think you are!",
                 "You are decisive love to solve problems.",
                 "You are most likely individualist who love to seek new adventures and opportunities. You are very confident and self-reliant.", 
                 "In a group setting, if no one else instantly takes charge, you will.", 
                 "Unfortunately, if you don't learn how to tone down their aggressiveness, your natural dominating traits can cause problems with others.",
                 "You are very suitable to become an entrepreneur!")
  TypeB <- paste("You are an excitable, fun seeking, cheerleader person who love to talk!",
                 "You're great at motivating others and need to be in an environment where you can express yourself and have a vote on major decisions.",
                 "Your outgoing nature makes you great networkers. You usually know a lot of people who know a lot of people!",
                 "You can be very loving and encouraging unless under pressure, when you tend to use your verbal skills to attack.", 
                 "You have a strong desire to be liked and enjoy being the center of attention. You are often very attentive to style, clothes, and flash.",
                 "You are the life of any party; and most people really enjoy being around you! ")
  TypeC <- paste("You are very loyal. In fact, you can absorb the most emotional pain and punishment in a relationship and still stay committed.",
                 "You are a great listener, incredibly empathetic and a warm encourager.", 
                 "However, you tend to be such a pleaser that you can have great difficulty being assertive in a situation or relationship when it's needed.")
  TypeD <- paste("You have a strong need to do things right and by the book. In fact, they are the kind of people who actually read",
                 "instruction manuals. They are great at providing quality control in an office, and will provide quality control in any",
                 "situation or field that demands accuracy, such as accounting, engineering, etc. Because rules, consistency and high",
                 "standards are so important to beavers, they are often frustrated with others who do not share these same",
                 "characteristics. Their strong need for maintaining high (and oftentimes unrealistic) standards can short-circuit their",
                 "ability to express warmth in a relationship. ")
  
  result <- "Please answer at least 5 questions."
  if (ans0[5]>5) {
    result <- paste("You answered ",toString(10-ans0[5])," questions. Please answer at least 5 questions to get result.")
  } else {
    ans1 <- ans0[1:4]
    typeR <- which(ans1 == max(ans1))
    r <- typeR[sample(1:length(typeR))]
    result = "Something Wrong"
    if (r==1) {
      result <- TypeA
    } else if (r == 2) {
      result <- TypeB
    } else if (r == 3) {
      result <- TypeC
    } else if (r==4) {
      result <- TypeD
    }
  }
  return(result)
}
calc <- function (qx, ans3) {
  if (qx=='A') {
    ans3[1] <- ans3[1] + 1
  } else if (qx=='B') {
    ans3[2] <- ans3[2] + 1
  } else if (qx=='C') {
    ans3[3] <- ans3[3] + 1
  } else if (qx=='D') {
    ans3[4] <- ans3[4] + 1
  } else if (qx=='E') {
    ans3[5] <- ans3[5] + 1
  }
  return(ans3)
}

shinyServer(
  function(input,output) {
    output$oAns <- renderPrint({findResult(input$q1,input$q2,input$q3,input$q4,input$q5,input$q6,input$q7,input$q8,input$q9,input$q10)})
    #output$oResult <- renderPrint({findResult(input$q1,input$q2,input$q3,input$q4,input$q5,input$q6,input$q7,input$q8,input$q9,input$q10)})
  }
)