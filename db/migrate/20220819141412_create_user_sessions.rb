class CreateUserSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :user_sessions do |t|
      t.string :token
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
