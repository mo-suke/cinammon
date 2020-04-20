class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
  end

  def update
  end

  def destroy
  end

  def search
    @students = Student.search(params[:q])
    render "index"
  end
end
