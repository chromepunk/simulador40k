letales <- function(results, enable_lethals = FALSE){
  if(enable_lethals){
    lethal_hits <- results$crits
    normal_hits <- results$hits
  }
  else{
    lethal_hits <- 0
    normal_hits <- results$hits + results$crits
  }
  list(
    lethals = lethal_hits,
    hits = normal_hits
  )
}