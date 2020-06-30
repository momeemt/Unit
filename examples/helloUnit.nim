import Unit

const
  my_height = 1.72.m
  my_weight = 52.5.kg
  make_a_cup_of_noodles = 180.s
  electric_current = 20.A
  today_temperature = 302.15.K     # I live in Tokyo ;)
  glass_of_water = 6e24.mol
  super_led = 15.cdr

echo $my_height
# => 1.72[m]

echo $(toCentiMetre(my_height))
# => 172.0[cm]

echo my_height.toCentiMetre.repr
# => 172.0