require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  let(:type){double("ice cream")}
  let(:quantity){double(69420)}
  let(:milk){double("milk")}
  let(:sugar){double("sugar")}
  let(:ice){double("ice")}
  
  subject(:dessert){Dessert.new}

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq("ice cream")
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(69420)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredient).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect(Dessert.new(:type, 'apple', :chef)).to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array"do 
      dessert.add_ingredient(:milk)
      dessert.add_ingredient(:icecream)
      dessert.add_ingredient(:sugar)
      expect(dessert.ingredients).to eq(["milk", "sugar", "icecream"])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      dessert.add_ingredient(:milk)
      expect(dessert.ingredients).to eq(["milk"])

    end

  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      dessert.eat
      expect(dessert.quantity).to eq(69419) 
    end 
    it "raises an error if the amount is greater than the quantity" do
    end 
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(dessert.titleize.include?"Chef "+ :chef+ " the Great Baker")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"do
      expect(dessert).to receive(:bake)
  end 
  end
end
