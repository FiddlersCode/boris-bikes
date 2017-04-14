require 'bike.rb'
describe Bike do
  it { is_expected.to respond_to :working?}

  describe '#report_broken' do
    it {is_expected.to respond_to :report_broken}
    it 'reports a broken bike' do
      bike = Bike.new
      expect(bike.report_broken).to eq true
    end
  end

end
