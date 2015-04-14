class CreateRambles < ActiveRecord::Migration
  def change
    create_table :rambles do |t|
      t.string :body, null: false

      t.timestamps
    end
  end
end
