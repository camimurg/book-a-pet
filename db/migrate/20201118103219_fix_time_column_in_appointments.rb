class FixTimeColumnInAppointments < ActiveRecord::Migration[6.0]
  def change
    rename_column :appointments, :time, :start_time
    add_column :appointments, :end_time, :time
  end
end
