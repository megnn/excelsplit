library(xlsx)

data <- read.xlsx("/Users/zmartygirl/data/projects/excelsplit/SalesData.xlsx", sheetIndex = 1, header = TRUE)
for (name in levels(data$Sales_Rep)){
  temp <- subset(data, Sales_Rep ==name)
  filename <- paste('/Users/zmartygirl/data/projects/excelsplit/splitfiles/', gsub(' ','',name), sep='','.xlsx')
  write.xlsx(temp, filename, row.names = FALSE, col.names = TRUE)
  
}

