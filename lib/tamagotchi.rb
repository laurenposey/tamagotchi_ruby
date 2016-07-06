class Tamagotchi
  @@tamagotchi = {@name => "Kitty", @food => 10, @sleep => 10, @activity => 10}

  define_method(:initialize) do |name|
    @name = name
    @food = 10
    @sleep = 10
    @activity = 10
  end

  define_method(:is_alive?) do
    if !(@food==0 && @sleep==0 && @activity==0)
    #   is_alive? = true
    # else
    #   is_alive? = false
    # end
  end

  define_singleton_method(:food) do
    @@tamagotchi << 'food unit (1 feeding press)'
  end

  define_singleton_method(:play) do
    @@tamagotchi << 'play unit (1 feeding press)'
  end
end
