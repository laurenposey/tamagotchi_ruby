require("rspec")
require("tamagotchi")

describe(Tamagotchi) do
  describe("#initialize") do
    it("sets the name and life levels of a new Tamagotchi") do
      my_pet = Tamagotchi.new("Kitty")
      expect(my_pet.name()).to(eq("Kitty"))
      expect(my_pet.food()).to(eq(10))
      expect(my_pet.sleepy()).to(eq(10))
      expect(my_pet.activity()).to(eq(10))
    end
  end

  describe("#is_alive?") do
    it("is alive if the food level is above 0") do
      my_pet = Tamagotchi.new("Kitty")
      expect(my_pet.is_alive?()).to(eq(true))
    end

    it("is dead if the food level is 0") do
      my_pet = Tamagotchi.new("Kitty")
      my_pet.set_food() #make a method that will change the food level of your tamagotchi.
      expect(my_pet.is_alive?()).to(eq(false))
    end
    it("is dead if the sleepy level is 0") do
      my_pet = Tamagotchi.new("Kitty")
      my_pet.set_sleepy()
      expect(my_pet.is_alive?()).to(eq(false))
    end
    it("is dead if the activity level is 0") do
      my_pet = Tamagotchi.new("Kitty")
      my_pet.set_activity()
      expect(my_pet.is_alive?()).to(eq(false))
    end
  end



  describe("#time_passed") do
    it("decreases the amount of food the Tamagotchi has left by 1") do
      my_pet = Tamagotchi.new("Kitty")
      my_pet.time_passed(1)
      expect(my_pet.food()).to(eq(9))
    end
  end
end
