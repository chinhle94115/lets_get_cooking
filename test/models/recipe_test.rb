# == Schema Information
#
# Table name: recipes
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  title       :string
#  ingredient  :string
#  source_url  :string
#  image       :string
#  publisher   :string
#  provider_id :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
