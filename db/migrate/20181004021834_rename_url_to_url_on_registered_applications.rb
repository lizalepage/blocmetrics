class RenameUrlToUrlOnRegisteredApplications < ActiveRecord::Migration[5.2]
  def change
    rename_column :registered_applications, :URL, :url
  end
end
