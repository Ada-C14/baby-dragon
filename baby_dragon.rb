class BabyDragon
  attr_reader :name, :asleep

  def initialize(name)
    @name = name
    @food_in_belly = 0
    @asleep = false
    puts "#{@name} has been born"
  end

  def asleep=(sleepy)
    if sleepy != true && sleepy != false
      raise ArgumentError, "Invalid Sleep status"
    end
    @asleep = sleepy
  end

  def feed(tons_of_food)
    puts "#{name} consumes #{tons_of_food} tons of junk food"
    @food_in_belly += tons_of_food
    time_passes
  end

  def play
    puts "You play fetch with #{name}."
    puts "#{name} brings back a Mack Truck"

    time_passes
  end

  def burninate(who)
    puts "#{name} incinerates #{who}"
    @food_in_belly -= 1
    time_passes
  end


  private

  def time_passes
    puts "Some time goes by..."
    puts "#{name} has #{@food_in_belly} tons of food in it's belly"
    if @food_in_belly > 0
      @food_in_belly -= 1
    end

    if @food_in_belly == 0
      if @asleep
        @asleep = false
        puts "#{name} wakes up crankily!"
      end

      puts "Oh no, #{@name} is hangry"
      puts "They ATE YOU!"
      exit
    end
  end

  public

  def sleep
    @asleep = true
    puts "#{name} goes zzzzzzzzz...."
    3.times do
      time_passes
    end
    puts "#{name} wakes up!"
    @asleep = false
  end
end