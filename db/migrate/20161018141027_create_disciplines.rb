class CreateDisciplines < ActiveRecord::Migration
  def change
    create_table :disciplines do |t|

      t.timestamps null: false
    end
  end
end
