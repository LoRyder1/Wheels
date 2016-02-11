########################################################################

class Gear
  attr_reader :chainring, :cog
  def initialize chainring, cog
    @chainring, @cog = chainring, cog
  end

  def gear_inches diameter
    ratio * diameter
  end

  def ratio
    chainring / cog.to_f 
  end
end

class Wheel
  attr_reader :rim, :tire, :gear
  def initialize rim, tire, chainring, cog
    @rim, @tire = rim, tire
    @gear = Gear.new(chainring, cog)
  end

  def diameter
    rim + (tire * 2)
  end

  def gear_inches
    gear.gear_inches(diameter)
  end
end

p Wheel.new(26, 1.5, 52, 11).gear_inches
