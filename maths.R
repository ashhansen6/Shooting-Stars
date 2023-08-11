# To solve for:
theta = 80 * (pi / 180) # launch angle in degrees converted to radians
velocity_y = 0 # vector, (m/s); unknown
velocity_x = 0 # vector, (m/s); unknown
height = 0 # unknown
drift = 0 # unknown
airtime_up = 0 # unknown
airtime_down = 0 # unknown
descent_speed = 0 # unknown

## Max height
### Vertical Velocity, meters per second (m/s)
rocket_mass <- rockets$mass[rockets$name == "HI-FLIER"]
motor_mass <- motors$gross_mass[motors$brand == "ESTES" && motors$name == "A83"]
combined_mass = (rocket_mass + motor_mass) / 1000 # mass in kilograms (kg)

rocket_wt <- rockets$wt[rockets$name == "HI-FLIER"]
motor_wt <- motors$gross_wt[motors$brand == "ESTES" && motors$name == "A83"]
combined_wt = (rocket_wt + motor_wt) / 1000 # weight in kilograms (kg)

force_net_y = (thrust_expanded$thrust - combined_wt) / 10
accelleration_y = force_net_y / combined_mass
velocity_y <- cumtrapz(thrust_expanded$time, accelleration_y) * sin(theta)
position_y <- cumtrapz(thrust_expanded$time, velocity_y)
height_max <- max(position_y) # NOTE: dragless, need to factor in drag for realism

### Horizontal Velocity


## Descent Speed, feet per tenth of a second 
descent_speed = (height * full_wt_post) / (drift) %>%
  tan()
  