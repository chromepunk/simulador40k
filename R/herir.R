herir <- function(results, wound, rr_wound, anti = 6){
  
  wounds <- sample(6, results$hits, replace = TRUE)
  
  # Reroll 1s
  if(rr_wound == 1){
    wounds[wounds == 1] <- sample(
      6,
      sum(wounds == 1),
      replace = TRUE
    )
  }
  
  # Reroll all failed wounds
  if(rr_wound == 2){
    wounds[wounds < wound] <- sample(
      6,
      sum(wounds < wound),
      replace = TRUE
    )
  }
  
  # Critical wounds
  wounds_crit <- sum(wounds >= anti)
  
  # Total wounds, including Anti-X
  wounds_total <- sum(
    wounds >= wound | wounds >= anti
  )
  
  # Normal wounds
  wounds_normal <- wounds_total - wounds_crit
  
  list(
    wounds_crit = wounds_crit,
    #add the lethals as wounds for next step
    wounds_normal = wounds_normal + results$lethals
  )
}