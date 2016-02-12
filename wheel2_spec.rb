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

