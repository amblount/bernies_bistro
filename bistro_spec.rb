require_relative('bistro')

describe Recipe do
  let(:recipe) { Recipe.new('id' => 111, "name" => 'Tofu Taco')}
  it 'has an id' do
    expect(recipe.id).to eq(111)
  end

  it 'has a name'
    expect(recipe.name).to eq("Tofu Taco")
  end
end

describe Bistro do
  let(:bistro) { Bistro.new }

  it 'should load recipes' do
    bistro.load_recipes('recipes.csv')
    expect(bistro.recipes).not_to be_empty
    expect(bistro.recipes.length).to eq(3)
    expect(bistro.recipes[0]).to be_a Recipe
    expect(bisto.recipes.all? { |x| x.is_a? recipe }).to be true
  end

  describe "#find_recipe_by_id" do
    it 'should find a recipe by id' do
    end

    it "should raise an exception if it can't find a recipe" do
      #How do I check exceptions? Heres an example
      #expect { my_thing.method_that_raises }.to raise_error
    end
  end
end

