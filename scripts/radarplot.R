library(radarchart)

# use a list interface
labs <- c("T.study design in title.1a", "T.efficacy/harms terms in title.1b", "I.background.2", "I.objectives.3",  "M.eligibility criteria and outcomes.4a", "M.language and publication status.4b", "M.handle overlap.4c", "M.sources and dates.5", "M.assessment methods.6", "M.in duplicate and independently methods.7",  "M.method of synthesis.8", "R.number and type of reviews.9a",
          "R.number of studies and participants.9b", "R.present assessment.10", "R.present results.11a", "R.present harms.11b",  "C.strengths and limitations.12", "C.future research.13", "O.funding.14", "O.registration.15")
scores <- list("Percentage Agreement %" = c(90, 95, 100, 97.5, 80, 97.5, 100, 97.5, 85, 95, 87.5, 82.5,90, 85, 77.5, 90, 85, 90, 100, 100))
# Default settings
#chartJSRadar(scores=scores, labs=labs)
# Fix the max score
#chartJSRadar(scores=scores, labs=labs, maxScale=100)
# Fix max and spacing
cols <- matrix(c(32,32,32), nrow = 3)

chartJSRadar(scores=scores, labs=labs, maxScale=100, scaleStepWidth = 10, scaleLineWidth=20,
             main= "Agreement (%)", showLegend = FALSE, 
             polyAlpha = 0.0, lineAlpha = 0.8, colMatrix = cols)
# Change title and remove legend
#chartJSRadar(scores=scores, labs=labs, main = "Percentage Agreement %", fontColor = "green", showLegend = FALSE)
# Add pass through settings for extra options
#chartJSRadar(scores=scores, labs=labs, maxScale =100, scaleLineWidth=20)
#chartJSRadar(scores=scores, labs=labs, polyAlpha = 0.0, lineAlpha = 0.8)

##################################################################################################################

