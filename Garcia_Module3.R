# create vectors for candidates and poll results
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Berine")
ABC <- c(4, 62, 51, 21, 2, 14, 15)
CBS <- c(12, 75, 43, 19, 1, 21, 19)

# creating the dataframe
poll_data <- data.frame(Name, ABC, CBS)

# display the dataframe
print(poll_data)
