require_relative "baby_dragon"

drago = BabyDragon.new("Drago the magnificent")

puts "Dragon named #{drago.name}"
puts "Are they asleep? #{drago.asleep}"
# drago.asleep = true
# drago.sleep

drago.feed(3)
drago.play
drago.feed(4)
drago.sleep
drago.feed(3)
drago.burninate("Joffrey")
