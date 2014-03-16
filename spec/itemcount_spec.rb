require 'rspec'
require 'pry'
require_relative '../lib/ItemCount'

describe ItemCount do
  paragraph = ItemCount.new("Hello World, This is me.")
  it "takes a string as an argument" do
    expect(paragraph.words).to eq("Hello World, This is me.")
  end
  it "puts the string into an array" do
    expect(paragraph.wordcount).to_not eq(nil)
  end
  it "breaks the array into seperate words" do
    expect(paragraph.wordcount.size).to eq(5)
  end
  it "breaks the array words into letters" do
    expect(paragraph.lettercount).to eq(18)
  end
  it "breaks the array's symbols into an array" do
    expect(paragraph.symbolcount).to eq(2)
  end
end
