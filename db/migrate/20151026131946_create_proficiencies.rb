class CreateProficiencies < ActiveRecord::Migration
  def change
    create_table :proficiencies do |t|

      t.timestamps null: false
    end
  end
end
