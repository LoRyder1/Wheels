require_relative 'wheel2'

describe 'Wheel' do
  let(:num) {double('num')}
  subject {Wheel.new(num, num, num, num)}

  it 'expect 4 arguments' do
    expect(subject.method(:initialize).arity).to eq 4
  end

  describe '#diameter' do
    def set_vars rim, tire, chainring=nil, cog=nil 
      allow(subject).to receive_messages(rim: rim, tire: tire, chainring: chainring, cog: cog)
    end
    it 'calculates diameter correctly' do
      set_vars(4,2)
      expect(subject.diameter).to eq 8
    end
  end

  describe '#gear_inches' do
    it 'initializing Wheel creates new instance of class gear' do
      expect(subject.gear).to be_an_instance_of(Gear)
    end

    it 'is defined as a method' do
      expect(Wheel.method_defined?(:gear_inches)).to be true
    end
  end
end

describe 'Gear' do
  let(:num) {double('num')}
  subject {Gear.new(num, num)}

  def set_vars chainring, cog
    allow(subject).to receive_messages(chainring: chainring, cog: cog)
  end

  it 'expect 2 arguments' do
    expect(subject.method(:initialize).arity).to eq 2
  end

  describe '#ratio' do
    it 'is defined as a method' do
      expect(Gear.method_defined?(:ratio)).to be true
    end

    it 'calculates ratio correctly' do
      set_vars(8,4)
      expect(subject.ratio).to eq 2.0
    end
  end

  describe '#gear_inches' do
    def set_ratio ratio
      allow(subject).to receive(:ratio).and_return(ratio)
    end

    it 'is defined as a method' do
      expect(Gear.method_defined?(:gear_inches)).to be true
    end

    it 'expects one argument' do
      expect(subject.method(:gear_inches).arity).to eq 1
    end

    it 'calculates gear_inches correctly' do
      set_ratio 5
      expect(subject.gear_inches(3)).to eq 15
    end
  end
end
