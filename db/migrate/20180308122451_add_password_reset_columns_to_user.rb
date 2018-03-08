class AddPasswordResetColumnsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :rest_password_token, :string
    add_column :users, :rest_password_sent_at, :datetime
  end
end
