class CreateMsgs < ActiveRecord::Migration[5.0]
  def change
    create_table :msgs do |t|
      t.string :name
      t.string :email
      t.text :content
      t.timestamps
    end
  end
end
