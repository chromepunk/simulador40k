#hits <- sapply(resultados, function(x) x$hits)
#mean(hits). mean(hits >=4.)


impactar <- function(attacks, hit, rr_hit, critical_hit = 6){
  result <- sample(6, attacks, replace = TRUE)
  
  #reroll 1s
  if(rr_hit == 1){
    result[result == 1] <- sample(6, sum(result == 1), replace = TRUE)
  }
  
  #reroll misses
  if(rr_hit == 2){
    result[result < hit] <- sample(6, sum(result < hit), replace = TRUE)
  }
  #Critical hits
  crits <- sum(result >= critical_hit)
  
  #Normal hits
  hits <- sum(result >= hit) - crits
  
  list(
    crits = crits,
    hits = hits
  )
}