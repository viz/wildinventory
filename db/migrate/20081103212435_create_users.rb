class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table "users", :force => true do |t|
      t.column :login,                     :string, :null => false
      t.column :email,                     :string
      t.column :crypted_password,          :string, :null => false, :limit => 40
      t.column :password_salt,             :string, :null => false, :limit => 40
      t.column :created_at,                :datetime
      t.column :updated_at,                :datetime
      t.column :remember_token,            :string, :null => false
      t.column :remember_token_expires_at, :datetime
      
      
    end
  end

  def self.down
    drop_table "users"
  end
end
