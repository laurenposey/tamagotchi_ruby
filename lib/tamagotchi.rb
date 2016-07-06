class Tamagotchi
  @@my_pet = {@name => "Kitty", @food => 10, @sleepy => 10, @activity => 10}

  define_method(:initialize) do |name|
    @name = name
    @food = 10
    @sleepy = 10
    @activity = 10
  end

  define_method(:name) do
    @name
  end
  define_method(:food) do
    @food
  end
  define_method(:sleepy) do
    @sleepy
  end
  define_method(:activity) do
    @activity
  end

  define_method(:time_stamp) do
    @@time_stamp
  end

  define_method(:is_alive?) do
    if !(@food==0 || @sleepy==0 || @activity==0)
      is_alive = true
    else
      is_alive = false
    end
  end

  define_method(:set_food) do
    until (@food == 0)
      @food -= 1
    end
  end
  define_method(:set_sleepy) do
    until (@sleepy == 0)
      @sleepy -= 1
    end
  end
  define_method(:set_activity) do
    until (@activity == 0)
      @activity -= 1
    end
  end

  define_method(:interval) do
    time = Time.new(2016,07,06,15,0,0, "+09:00")
    time_passed = Time.now()
    interval = (time_passed - time).to_i()
  end
  define_method(:time_passed) do |interval|
    @food -= (interval).to_i()
    @sleepy -= (interval).to_i()
    @activity -= (interval).to_i()
  end

end
