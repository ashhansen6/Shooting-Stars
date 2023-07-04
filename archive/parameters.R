## Rocket 
# Name
rkt_name = "ESTES HI-FLIER"
# Weight in grams (g)
rkt_wt = 31.2
rkt_mass = rkt_wt/9.8
# Recovery system
rkt_rcvr = "STREAMER"

## Engine
# Name
eng_name = "ESTES A8-3"
# Weight & mass w/o propellant, grams (g)
eng_casing_wt = 15.6
eng_casing_mass = eng_casing_wt / 9.8
# Propellant weight & mass, grams (g)
eng_prop_wt = 0.00875
eng_prop_mass = eng_prop_wt / 9.8
# gross weight & mass, grams (g)
eng_gross_wt = eng_casing_wt + eng_prop_wt
eng_gross_mass = eng_gross_wt / 9.8
# Total Impulse Newton-seconds (N-sec)
eng_impulse =2.5
# Thrust per tenth of second, Newtons (N) - from 0.0 to 1.0 seconds
eng_thrust = c(0.0, 5.0, 9.5, 3.0, 2.5, 2.5, 2.5, 0.5, 0.0, 0.0)
# Burn time, seconds (s)
eng_t_burn = 0.8
# Time to ejection, seconds (s)
eng_t_eject = 6.5

## Constructed Model parameters
# Weight & mass, grams (g)
full_wt_pre = rkt_wt + eng_gross_wt
full_mass_pre = full_wt_pre / 9.8
full_wt_post = rkt_wt + eng_casing_wt
full_mass_post = full_wt_post / 9.8

