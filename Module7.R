mydata <- nottem #average monthly temp in Nottingham.

#Step2
data(mydata) # This one does not work
head(mydata)
list(mydata)
summary(mydata)
plot(mydata)

#Step3
s3 <- list(city = "Nottingham", Temp= 23.4)
class(s3) <- "CityTemp"
s3

setClass("NottemDataS4",slots = list(data = "numeric"))
s4 <- new("NottemDataS4", data = as.numeric(nottem))
class(s4)

#Github Examples
car_s3 <- list(brand = "Toyota", model = "Corolla", year = 2020)
class(car_s3) <- "Car"
class(car_s3)
print.Car <- function(obj) {
  cat("Car Information:\n")
  cat("Brand:", obj$brand, "\n")
  cat("Model:", obj$model, "\n")
  cat("Year:", obj$year, "\n")
}
print(car_s3)

setClass("CarS4",slots = list(brand = "character",model = "character",year = "numeric"))
car_s4 <- new("CarS4", brand = "Toyota", model = "Corolla", year = 2020)
class(car_s4)
setMethod("show", "CarS4", function(object) {
  cat("Car Information (S4 Object):\n")
  cat("Brand:", object@brand, "\n")
  cat("Model:", object@model, "\n")
  cat("Year:", object@year, "\n")
})
car_s4

