class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :japanese
      t.string :vietnamese

      t.timestamps null: false
    end
  end
end
