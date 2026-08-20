salvar <- function(results, save, enable_DW){
  if(enable_DW == FALSE){
    to_save <- results$wounds_normal + results$wounds_crit
    dev_wounds <- 0
  }
  else{
    to_save <- results$wounds_normal
    dev_wounds <- results$wounds_crit
  }
  
  saves <- sample(6, to_save, replace = TRUE)
  
  failed_saves <- sum(saves < save)
  
  list(
    failed_saves = failed_saves,
    dev_wounds = dev_wounds
  )
}