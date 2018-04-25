require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:dessert){ Dessert.new("brownie",2,chef) }
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq("brownie")
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(2)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect{ Dessert.new("brownie","2",chef) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      dessert.add_ingredient("eggs")
      expect(dessert.ingredients).to include("eggs")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      my_ingredients = ["eggs","sugar","flour"]
      my_ingredients.each do |el|
        dessert.add_ingredient(el)
      end
      new_ingredients = dessert.ingredients
      expect(dessert.ingredients).to eq(my_ingredients)
      dessert.mix!
      expect(dessert.ingredients).to_not eq(my_ingredients)
      expect(dessert.ingredients.sort).to eq(my_ingredients.sort)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do

      initial_quantity = dessert.quantity
      amount = 1
      expect(initial_quantity-amount).to eq(dessert.eat(amount))

    end

    it "raises an error if the amount is greater than the quantity" do
      amount = 4
      expect{dessert.eat(amount)}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef David")
      expect(dessert.serve).to include("Chef David")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(dessert)
      dessert.make_more
    end

  end
end
