class AddUser < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |u|
      u.string :name
      u.string :password_digest

      u.timestamps
    end
  end
end
