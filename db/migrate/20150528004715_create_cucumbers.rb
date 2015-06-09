class CreateCucumbers < ActiveRecord::Migration
  def change
    create_table :cucumbers do |t|
      t.string :browser
      t.string :env
      t.string :tag
      t.timestamps null: false
    end
  end
end