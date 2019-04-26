class RenameContactToContactRequest < ActiveRecord::Migration[5.2]
  def change
    rename_table :contacts, :contact_requests
  end
end
