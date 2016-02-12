require_relative 'wheel2'

describe 'Wheel' do
  let(:num) {double('num')}
  subject {Wheel.new(num, num, num, num)}

  it 'expect 4 arguments' do
    expect(subject.method(:initialize).arity).to eq 4
  end

end

