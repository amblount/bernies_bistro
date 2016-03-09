require 'csv'
# 1. Load recipes from a file
# 2. List all recipes
# 3. Display a recipes name, description and
# 4. high level trying to build recipe objects from data in a file

class Recipe
  attr_reader :id, :name, :description, :inredients, :directions
    def initialize(attributes)
      @id = attributes['id']
      @name = attributes['name']
      @description = attributes['description']
      @ingredients = attributes['ingredients']
      @directions = attributes['directions']
    end

end




class Bistro
  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def load_recipes(filename)

    CSV.foreach(filename, headers: true) do |row|
      @recipes << Recipe.new(row)
    end

  end

  def find_recipe_by_id(recipe_id)
    recipes = []
    @recipes.each do |recipe|
      recipes << recipe if recipe.id == recipe_id
    end

    raise "Can't find a recipe with an id of #{recipe_id.inspect}" unless recipe recipes
  end
end


if ARGV.any?

#I wonder if I could clean this up...
bistro = Bistro.new
bistro.load_recipes("recipes.csv")
p bistro.recipes
if ARGV[0] == "list"
  raise "TODO: implement listing of recipes"
elsif ARGV[0] == "display"
  puts bistro.find_recipe_by_id(ARGV[1])
end

end











