A <- matrix(1:100, nrow = 10)
B <- matrix(1:1000, nrow = 10)

dim(A)   # 10 10
dim(B)   # 10 100

invA <- tryCatch(solve(A), error = function(e) e)
detA <- det(A)
invB <- tryCatch(solve(B), error = function(e) e)
detB <- tryCatch(det(B),   error = function(e) e)
invA
detA
invB
detB
A
B