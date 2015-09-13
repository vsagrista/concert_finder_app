class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
      t.references :concert, index: true
      t.timestamps
    end
  end
end
