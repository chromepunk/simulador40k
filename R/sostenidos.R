sostenidos <- function(result, sustained = 0){
  
  hits_sustained <- result$hits + sustained * result$crits
  
  list(
    crits = result$crits,
    hits = hits_sustained
  )
}