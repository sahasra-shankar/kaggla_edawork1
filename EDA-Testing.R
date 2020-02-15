---
  title: "EDA in R"
output: 
  html_document: 
  toc: yes
---
library(DataExplorer)
choco <- read.csv('/Users/sahasra/Desktop/data_science/work1/flavors_of_cacao.csv', header = T, stringsAsFactors = F)

choco$Cocoa.Percent <- as.numeric(gsub('%','',choco$Cocoa.Percent))
choco$Review.Date <- as.character(choco$Review.Date)

plot_str(choco)

plot_missing(choco)

plot_histogram(choco)

plot_density(choco)

plot_correlation(choco, type = 'continuous','Review.Date')

plot_bar(choco) 

create_report(choco) #comment this if you're not rendering this entire rmarkdown
