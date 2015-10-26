class AddInstructorIdAndInstrumentIdToProficiency < ActiveRecord::Migration
  def change
    add_column :proficiencies, :instrument_id, :integer
    add_column :proficiencies, :instructor_id, :integer
  end
end
