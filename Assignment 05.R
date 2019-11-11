ptm <- proc.time()
DF <- read.csv("UNRATE.csv")
CSV_READ_TIME <- (proc.time() - ptm)
CSV_READ_TIME
############################################

# Looking at what we got
class(DF)
typeof(DF)
str(DF)


## Reading in our csv file using fread() from package data.table 
# Installing data.table (if required) and loading it into memory
if (!require("data.table")) install.packages("data.table")
library("data.table")

#Checking and setting number of cpu threads
getDTthreads()
getDTthreads(verbose=TRUE)
setDTthreads(0)
getDTthreads()

# Doing a timed read of the same file with fread()
### Run as a block of text to time #########
ptm <- proc.time()
DF <- fread("UNRATE.csv", header="auto", 
            data.table=FALSE)
FREAD_READ_TIME <- (proc.time() - ptm)
FREAD_READ_TIME