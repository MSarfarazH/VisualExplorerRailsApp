class AddAgeInterestBioUsernamePasswordDigestImgUrlToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :age, :integer
    add_column :users, :interest, :string
    add_column :users, :bio, :string
    add_column :users, :username, :string
    add_column :users, :password_digest, :string
    add_column :users, :img_url, :string
  end
end
