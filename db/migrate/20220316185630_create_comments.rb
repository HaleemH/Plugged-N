class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :comment
      t.integer :rating
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :vendor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
