module ApplicationHelper
	def error_message_for(object)
		render(:partial => 'layouts/error_messages', 
			:locals => {:object => object})
	end
end
