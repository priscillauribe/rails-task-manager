class TasksController < ApplicationController
  before_action :set_task, except: [:index, :new, :create]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = task.new(task_params)
    @task.save
    redirect_to task_path(@tasks)
  end
end
