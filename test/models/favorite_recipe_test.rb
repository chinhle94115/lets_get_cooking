# == Schema Information
#
# Table name: favorite_recipes
#
#  id         :integer          not null, primary key
#  recipe_id  :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class FavoriteRecipeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
