require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:dessert) {Dessert.new("cake",10,'chef') }
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq('cake')
    end


    it "sets a quantity" do
      expect(dessert.quantity).to eq(10)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity"do
      expect {Dessert.new('cake','fire','chef') }.to raise_error"Stuff Aint Right"
  end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array"  do
      expect(dessert.add_ingredient('eggs')).to eq(['eggs'])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients = ['eggs','milk','iron','flakes','ham'].sort!

      ingredients.each { |ing| dessert.ingredients << ing }
      expect(dessert.ingredients).to eq(ingredients)
      dessert.mix!
      expect(ingredients).not_to eq(dessert.ingredients)
      expect(dessert.ingredients.sort).to eq(ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(dessert.eat(3)).to eq(7)
    end
    

    it "raises an error if the amount is greater than the quantity" do
      expect{dessert.eat(15)}.to raise_error "not enough left!"
    end

  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(dessert.serve).to include(chef.titleize)
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"do
      expect(dessert.make_more).to eq(400)
    end
  end
end
