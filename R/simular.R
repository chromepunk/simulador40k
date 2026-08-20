simular <- function(attacks, hit, rr_hit, critical_hit = 6, sustained = 0
                    , enable_lethals = FALSE, wound, rr_wound, anti
                    , save, enable_DW, damage)
  {
  result <- impactar(attacks, hit, rr_hit, critical_hit)
  result_sust <- sostenidos(result, sustained)
  result_leth <- letales(result_sust, enable_lethals)
  result_wound <- herir(result_leth, wound, rr_wound, anti)
  result_save <- salvar(result_wound, save, enable_DW)
  result_damage <- daño(result_save, damage)
  return(result_damage)

}