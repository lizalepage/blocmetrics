class RenameApplicationsToRegisteredApplications < ActiveRecord::Migration[5.2]
  def change
    rename_table :applications, :registered_applications
  end
end
