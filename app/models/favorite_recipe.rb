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

class FavoriteRecipe < ActiveRecord::Base

  # belongs_to :recipe
  belongs_to :user

  validates_uniqueness_of :source_url
end
