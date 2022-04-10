setwd("/Users/arek/Desktop/RR/RRcourse2022/RR_Mar_30_31/")
library(rmarkdown)

for(s in 1:8) {
  render("Exercise_2.Rmd", params = list(season = s),
         output_file = paste0("report_season_", s, ".html"))
}