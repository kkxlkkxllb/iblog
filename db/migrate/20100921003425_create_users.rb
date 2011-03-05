class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string    :login,               :null => false                # optional, you can use email instead, or both
      t.string    :email,               :null => false                # optional, you can use login instead, or both
      t.string    :crypted_password,    :null => false                # optional, see below
      t.string    :password_salt,       :null => false                # optional, but highly recommended
      t.string    :persistence_token,   :null => false
      t.string    :micropost,:default => "Good Luck!"
      t.string    :broadcast,:default => "V1.0"
      t.text      :aboutme,:default => "Please edit!"
      t.string    :twitter,:default => "Edit it"
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
