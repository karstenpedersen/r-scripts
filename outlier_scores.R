require(dbscan)

top_knn <- function(data, k, top_n = 20) {
  outlier <- kNNdist(x=data, k=k, all=TRUE)[,k]
  rank_outlier <- order(x=outlier, decreasing=TRUE)
  result <- data.frame(ID=rank_outlier, score=outlier[rank_outlier])
  return (head(result, top_n))
}

top_lof <- function(data, minPts, top_n = 20) {
  outlier <- lof(x=data, minPts=minPts)
  rank_outlier <- order(x=outlier, decreasing=TRUE)
  result <- data.frame(ID=rank_outlier, score=outlier[rank_outlier])
  return (head(result, top_n))
}

# Data
data = rbind(
  c(5, 2),
  c(1, 7),
  c(3, 4),
  c(6, 6),
  c(4, 7),
  c(5, 5),
  c(4, 6),
  c(3, 7)
)
rownames(data) = c("A", "B", "C", "D", "E", "F", "G", "H")

dm <- dist(data, method="manhattan")
dm

top_knn(dm, k)
top_lof(dm, k)

