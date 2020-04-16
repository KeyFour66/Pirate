require_relative '../lib/dark_trader.rb'

describe " dark_trader " do

  it "should return array not nil" do
    expect(dark_trader).not_to be_nil
  end

end
