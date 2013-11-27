class Task < ActiveRecord::Base

	self.table_name = "b_tasks"	

	has_and_belongs_to_many :users, join_table: "b_tasks_member", foreign_key: "TASK_ID", association_foreign_key: "USER_ID"

end
