class Deal < ActiveRecord::Base

	self.table_name = "b_crm_deal"	

	# Number 3 *
	def tasks
		Task.joins("JOIN b_uts_tasks_task ON  b_uts_tasks_task.VALUE_ID = b_tasks.id").where("UF_CRM_TASK LIKE CONCAT('%D_?%') ", id)
	end

	# Number 4 *
	def users
		User.joins(:tasks).where("b_tasks.id" => self.task_list.ids)
	end

end
