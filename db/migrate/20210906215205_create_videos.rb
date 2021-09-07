class CreateVideos < ActiveRecord::Migration[6.1]
  def change
    create_table :videos do |t|
      t.string :url_video
      t.string :thumb
      t.string :titulo
      t.string :descricao

      t.timestamps
    end
  end
end
