library(rpivotTable)
library(knitr)

rpivotTable(
  Titanic,
  rows = "Survived",
  cols = c("Class","Sex"),
  aggregatorName = "Sum as Fraction of Columns",
  inclusions = list( Survived = list("Yes")),
  exclusions= list( Class = list( "Crew")),
  vals = "Freq",
  rendererName = "Table Barchart"
)
# htmlwidgets::saveWidget(a, file="titanic.html")
