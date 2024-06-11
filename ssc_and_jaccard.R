x1 <- c("0","0","0","0","0","0","1","0","0","1")
x2 <- c("1","0","0","1","1","0","1","0","1","1")
CT <- table(x1, x2) # Contingency table
CT

SSC <- (CT[1,1]+CT[2,2])/sum(CT)
SSC
Jaccard <- CT[2,2]/(CT[2,2]+CT[1,2]+CT[2,1])
Jaccard

