RSpec.shared_examples 'call' do
  it { is_expected.to respond_to(:call).with(1).argument }
end
