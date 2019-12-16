#18523245
# Import lpSolve package
library(lpSolve)

#SOAL NOMOR 2
# Set coefficients of the objective function
f.obj <- c(8000,12000)

# Set matrix corresponding to coefficients of constraints by rows
# Do not consider the non-negative constraint; it is automatically assumed
f.con <- matrix(c(9,12,
                  1,3
                  ),nrow=2,byrow=TRUE)

# Set unequality signs
f.dir <- c("<=",
           "<=")

# Set right hand side coefficients
f.rhs <- c(180,
           30)

# Nilai Max
lp("max",f.obj,f.con,f.dir,f.rhs)
# Nilai Min
lp("min",f.obj,f.con,f.dir,f.rhs)

# Variables max
lp("max",f.obj,f.con,f.dir,f.rhs)$solution
# Variables min
lp("min",f.obj,f.con,f.dir,f.rhs)$solution

# Sensitivities max
lp("max",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$sens.coef.from
lp("max",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$sens.coef.to
# Sensitivities min
lp("min",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$sens.coef.from
lp("min",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$sens.coef.to

# Dual Values (first dual of the constraints and then dual of the variables)
# Duals of the constraints and variables are mixed
lp("max",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$duals

# Dual Values (first dual of the constraints and then dual of the variables)
# Duals of the constraints and variables are mixed (min)
lp("min",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$duals

# Duals lower and upper limits
lp("max",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$duals.from
lp("max",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$duals.to

# Duals lower and upper limits (min)
lp("min",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$duals.from
lp("min",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$duals.to