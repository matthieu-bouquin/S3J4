require_relative '../lib/dark_trader' 

describe "crypo" do

it "return the acro of crypto" do
    expect(array_of_names(crypto_name)).to include ("ETH")
    expect(array_of_names(crypto_name)).to include ("SHIB")
  end 
end

