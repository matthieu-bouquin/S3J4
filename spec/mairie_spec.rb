require_relative '../lib/mairie_christmas'

describe "size"do

it "Check city" do
    expect(townhall.include?("VILLIERS-LE-BEL - 95400")).to be true
    end
it "Check number" do
    expect(array_length(townhall)) == 185
    end
end
