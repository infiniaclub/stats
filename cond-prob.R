## P(B | A) = P(A and B) / P(A)
conditional_probability <- function(P_A, P_B_given_A) {
  # Conditional probability calculation
  P_B_given_A / P_A
}
# Data frame with weather information
df <- data.frame(
  Cloudy = c("Yes", "Yes", "No", "No"),
  Rain = c("Yes", "No", "Yes", "No"),
  freq = c(30, 20, 10, 40)
)
# (P(Rain | Cloudy)): P(B|A)
prob_A = sum(df$freq[df$Cloudy=="Yes"])
prob_A
prob_B_given_A <- sum(df$freq[df$Cloudy=="Yes" & df$Rain == "Yes"])
prob_B_given_A
conditional_probability(prob_A,prob_B_given_A)

