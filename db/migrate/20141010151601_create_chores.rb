class CreateChores < ActiveRecord::Migration
  def change
    create_table :chores do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
