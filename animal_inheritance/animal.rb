module Flight
  def fly
    "I'm a #{self.class}, I'm flying!"
  end
end

class Animal
  attr_reader :num_legs
  def initialize
    @num_legs = 0
  end

  def warm_blooded?
    false
  end
end

class Mammal < Animal
  def warm_blooded?
    true
  end
end

class Amphibian < Animal

end

class Primate < Mammal
  def initialize
    @num_legs = 2
  end
end

class Frog < Amphibian

end

class Bat < Mammal
  include Flight
end

class Bird < Animal

end

class Parrot < Bird
  include Flight
end

class Chimpanzee < Primate

end

p Chimpanzee.new.num_legs
p Chimpanzee.new.warm_blooded?
p Parrot.new.fly
p Bat.new.fly
