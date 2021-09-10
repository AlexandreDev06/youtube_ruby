class AddCategoryToVideos < ActiveRecord::Migration[6.1]
  def change
    add_reference :videos, :category, foreign_key: true
  end
end
