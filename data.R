workbook_path <- "INSERT YOUR OWN FILE PATH FOR THE EXCEL SHEET HERE"
rockets <- read.xlsx(workbook_path, sheetName = "Rocket")
motors <- read.xlsx(workbook_path, sheetName = "Motor")
thrust <- read.xlsx(workbook_path, sheetName = "Thrust")
model_lib <- list(rockets = rockets, motors = motors)

# CONFIGURATION:
## ESTES HI-FLIER W/ ESTES A8-3 MOTOR

thrust_expanded <- thrust %>%
  filter(brand == "ESTES", name == "A83") %>%
  select(thrust, time) %>%
  bind_rows(data.frame(thrust = rep(0, 70), time = seq(3.1, 10, 0.1))) %>% # expanded to capture 10 seconds
  arrange(time) # Not necessary, keep for redundancy?
        