class ChangeDatatypesPhoneNumberPosts < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :phone_number, :unsigned_bigint

  end
end
