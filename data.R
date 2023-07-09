workbook_path <- "INSERT YOUR OWN FILE PATH FOR THE EXCEL SHEET HERE"
rockets <- read.xlsx(workbook_path, sheetName = "Rocket")
motors <- read.xlsx(workbook_path, sheetName = "Motor")
thrust <- read.xlsx(workbook_path, sheetName = "Thrust")
model_lib <- list(rockets = rockets, motors = motors)