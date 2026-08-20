daño <- function(results, damage){
  damage <- (results$failed_saves + results$dev_wounds) * damage 
}