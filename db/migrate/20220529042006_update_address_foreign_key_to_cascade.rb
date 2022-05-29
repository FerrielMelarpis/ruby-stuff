class UpdateAddressForeignKeyToCascade < ActiveRecord::Migration[6.0]
  def change
    # remove the old foreign_key
    remove_foreign_key :addresses, :profiles

    # add the new foreign_key with on delete cascade
    add_foreign_key :addresses, :profiles, null: false, on_delete: :cascade
  end
end
