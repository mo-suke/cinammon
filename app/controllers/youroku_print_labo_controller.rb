class YourokuPrintLaboController < ApplicationController
  layout 'youroku_print_labo'

  def index
  end

  def show
    @grade = params[:grade].to_i
    @status = params[:status].to_i
    @print_status = params[:print_status]
    @name_status = params[:name_status]

    @students = Student.grouping(params[:grade], params[:school_class])
  end
end
