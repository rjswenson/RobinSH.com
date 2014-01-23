class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:index, :show]

  def show
  end

  def index
    @projects = Project.order("created_at DESC").paginate(page: params[:page], per_page: 3)
    @all_projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to projects_path , notice: 'Project was successfully created.'
    else
      render action: 'new'
    end
  end

  def edit
  end

  def update
  if @project.update(project_params)
      redirect_to projects_path, notice: "Project updated"
    else
      render action: 'edit'
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_path, notice: "Project Deleted"
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :skills, :description)
  end
end
