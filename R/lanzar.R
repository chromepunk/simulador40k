s <- replicate(10000, simular(
  attacks = 10
  , hit = 3
  , rr_hit = 0
  , critical_hit = 6
  , sustained = 0
  , enable_lethals = FALSE
  , wound = 3
  , rr_wound = 0
  , anti = 6
  , save = 4
  , enable_DW = FALSE
  , damage = 1
)
)