class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :password
      t.string :email
      t.string :bio

      t.timestamps
    end
  end
end
