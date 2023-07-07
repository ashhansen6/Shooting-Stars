# Rockets
estes_hiflier = c(name = "ESTES HI-FLIER",
                     wt = (31.2), 
                     mass = 31.2 / 9.8,
                     rcvr_sys = "STREAMER")

# Motors
estes_a83 = c(name = "ESTES A8-3",
                 casing_wt = 15.6, #grams
                 casing_mass = 15.6 / 9.8, #grams
                 prop_wt = 0.00875, #grams
                 mass = 0.00875 / 9.8, #grams
                 gross_wt = 15.6 + 0.00875,#grams
                 gross_mass = (15.6 + 0.00875) / 9.8, #grams
                 impulse = 2.5, #Newton-seconds
                 thrust = c(0.0, 5.0, 9.5, 3.0, 2.5, 2.5, 2.5, 0.5, 0.0, 0.0), #Newtons
                 t_burn = 0.8, #seconds
                 t_eject = 6.5) #seconds

# Data Structures
rockets = data.frame(estes_hiflier)
motors = data.frame(estes_a83)
