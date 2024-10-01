class ProjectsController < ApplicationController
    before_action :set_project, only: [:show, :update_status]
  
    def show
      @comments = @project.comments.order(created_at: :desc)
    end
  
    def update_status
    #   if current_user.admin? || current_user.project_manager?
        @project.update(status: params[:status])
        redirect_to @project, notice: 'Status updated'
    #   else
    #     redirect_to @project, alert: 'Not authorized'
    #   end
    end
  
    private
  
    def set_project
      @project = Project.find(params[:id])
    end
end
  