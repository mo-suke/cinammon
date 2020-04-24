class StudentsController < ApplicationController
  def index
    @students = Student.order(:grade, :school_class, :class_number)

    respond_to do |format|
      format.html
      format.csv {send_data @students.generate_csv, filename: "students_#{Time.zone.now.strftime('%Y%m%d%S')}.csv"}
    end
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
    @student = Student.new(params[:student])
    if @student.save
      redirect_to @student, notice: "児童を登録しました"
    else
      render "new"
    end
  end

  def update
    @student = Student.find(params[:id])
    @student.assign_attributes(params[:student])
    if @student.save
      redirect_to @student, notice: "児童情報を更新しました"
    else
      render "edit"
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to :students, notice: "児童を削除しました"
  end

  def search
    @students = Student.search(params[:q])
    render "index"
  end

  def group
    @students = Student.grouping(params[:grade], params[:school_class])
    render "index"
  end

  # csvからのインポート
  def import
    if params[:file]&.path.nil?
      redirect_to :students, notice: "ファイルが選択されていません"
    else
      Student.import(params[:file])
      redirect_to :students, notice: "インポートを完了しました"
    end
  end
end
