class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.integer :user_id
      t.string :name
      t.string :app_id
      t.string :app_secret

      t.timestamps
    end

    add_index :clients, :user_id
    add_index :clients, [:app_id, :app_secret]
  end
end
