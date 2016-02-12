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
end

