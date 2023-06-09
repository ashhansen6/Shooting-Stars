# Descent Speed, feet per tenth of a second 
descent_speed = (3.22 * rkt_wt)
# Ascent Speed, feet per tenth of a second
net_force = eng_thrust - descent_speed
ascent_speed = (net_force / rkt_wt) * eng_t_burn

p = rep(0, 8)
for (i in 2:8){
  p[i] = p[i-1] + ascent_speed[i]
}