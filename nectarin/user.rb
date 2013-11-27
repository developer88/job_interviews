class User < ActiveRecord::Base

	self.table_name = "b_user"	

	has_and_belongs_to_many :tasks, join_table: "b_tasks_member", foreign_key: "USER_ID", association_foreign_key: "TASK_ID"

	# Number 1 *
	def created_tasks
		tasks.where("CREATED_BY = ?", self.ID)
	end

	# Number 2 *
	def as_executor_tasks
		tasks.where("b_tasks_member.TYPE = ?", "A")
	end

end
