# To solve for:
velocity_y = 0 # avg, (m/s); unknown
velcotiy_x = 0 # avg, (m/s); unknown
height = 0 # unknown
drift = 0 # unknown
airtime_up = 0 # unknown
airtime_down = 0 # unknown
descent_speed = 0 # unknown

## Max height

# <<COMMENT>> Need to calculate average velocity in both x and y direction
height = sqrt((sin(theta)*velocity_y)^2 + (cos(theta)*velocity_x)^2)

## Descent Speed, feet per tenth of a second 
descent_speed = (height * full_wt_post) / (drift) %>%
  tan()
  