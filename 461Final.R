library(tidyverse)
library(VIM)
df <- read_rds("brooklyn_sales.rds")
colSums(is.na(df))
table(df$zip_code)
gg <- df %>% aggr
ggsave(filename = '461IsNaPlot.png', plot = gg)