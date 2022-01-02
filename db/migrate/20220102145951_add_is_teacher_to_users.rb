class AddIsTeacherToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :isTeacher, :boolean, default: false
  end
end
