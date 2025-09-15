class CreateBooks < ActiveRecord::Migration[6.1]

  has_one_attached :image

  def change
    create_table :books do |t|
      t.string :title
      t.string :body
      t.integer :user_id
      t.timestamps
    end
  end
end
