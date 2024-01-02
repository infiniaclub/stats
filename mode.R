## Mode 
getmodes <- function(v) {
  uniqv <- unique(v)
  tab <- tabulate(match(v, uniqv))
  modes <- uniqv[tab == max(tab)]
  return(modes)
}
mks = c(7,7,2,2,2,7,3,4,5)
## pass vector or dataframe$col
getmodes(mks)

# Mode Using Package 
install.packages("modeest")
library(modeest)
mode = mfv(mks) ## Most frequent value(s)
print(mode)