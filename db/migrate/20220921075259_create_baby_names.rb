class CreateBabyNames < ActiveRecord::Migration[6.1]
  def change
    create_table :baby_names do |t|
      t.string :name
      t.string :gender 
      t.string :origin
      t.text :meaning
    end
  end
end
