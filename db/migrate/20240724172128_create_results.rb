class CreateResults < ActiveRecord::Migration[6.1]
  def change
    create_table :results do |t|
      t.integer :yes_count
      t.integer :total_questions

      t.timestamps
    end
  end
end
