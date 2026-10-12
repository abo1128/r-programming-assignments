data("mtcars")
head(mtcars)
str(mtcars)
print(mtcars)
summary(mtcars)
plot(mtcars$mpg, mtcars$hp)
s3_obj <- list(name = "Myself", age = 29, GPA = 3.5)
class(s3_obj) <- "student_s3"
class(s3_obj)
setClass("student_s4",
         slots = c(name = "character", age = "numeric", GPA = "numeric"))
s4_obj <- new("student_s4", name = "Myself", age = 29, GPA = 3.5)
class(s4_obj)
s3_test <- list(name = "Myself", age = "twenty-nine", GPA = 3.5)
class(s3_test) <- "student_s3"
s3_test

s4_test <- tryCatch(
  new("student_s4", name = "Myself", age = "twenty-nine", GPA = 3.5),
  error = function(e) e
)
s4_test

print.student_s3 <- function(x, ...) {
  cat("Name:", x$name, "\n")
  cat("Age:", x$age, "\n")
  cat("GPA:", x$GPA, "\n")
}
s3_obj

setMethod("show", "student_s4", function(object) {
  cat("Name:", object@name, "\n")
  cat("Age:", object@age, "\n")
  cat("GPA:", object@GPA, "\n")
})
s4_obj