library(ggplot2)

hospital_data <- data.frame(
  Freq = c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2),
  bloodp = c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176),
  first = factor(c("bad", "bad", "bad", "bad", "good", "good", "good", "good", NA, "bad")),
  second = factor(c("low", "high", "low", "high", "low", "high", "low", "high", "high", "high")),
  finaldecision = c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)
)


boxplot(bloodp ~ first, data = hospital_data,
        main="Blood Pressure by First Assessment",
        xlab="First Assessment", ylab="Blood Pressure",
        col=c("forestgreen", "gold"))


boxplot(bloodp ~ finaldecision, data = hospital_data,
        main="Blood Pressure by Final Decision",
        xlab="Final Decision (0 = Low, 1 = High)", ylab="Blood Pressure",
        col=c("forestgreen", "gold"))

hist(hospital_data$bloodp,
     main="Histogram of Blood Pressure",
     xlab="Blood Pressure", col="forestgreen", border="gold")

hist(hospital_data$Freq,
     main="Histogram of Frequency of Visits",
     xlab="Frequency", col="forestgreen", border="gold")
