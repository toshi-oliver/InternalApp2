class ChangeDatatypePhoneNumberPosts < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :phone_number, :bigint
  end
end
