require 'rails_helper'

RSpec.describe ProductHelper, type: :helper do
  include ProductHelper

  it "returns the first missing letter" do
    expect(missing_letter("abcde")).to eq("f")
    expect(missing_letter("mnop")).to eq("q")
  end

  it "returns '_' if all letters are present" do
    full = ("a".."z").to_a.join
    expect(missing_letter(full)).to eq("_")
  end

  it "ignores case and symbols" do
    expect(missing_letter("A!B@C#1")).to eq("d")
  end
end
