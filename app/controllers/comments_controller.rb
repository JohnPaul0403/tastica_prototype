class CommentsController < ApplicationController
  before_action :set_post

  def create
    @task.comments.create! params.expect(comment: [:content])
    redirect_to @task
  end

  private
    def set_post
      @task = Task.find(params[:task_id])
    end
end
