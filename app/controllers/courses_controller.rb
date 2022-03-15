class CoursesController < ApplicationController
  before_action :set_course, only: %i[show edit update destroy]

  def index
    @q = Course.ransack(params[:q])
    @courses = @q.result(distinct: true).includes(:posts,
                                                  :posters).page(params[:page]).per(10)
  end

  def show
    @post = Post.new
  end

  def new
    @course = Course.new
  end

  def edit; end

  def create
    @course = Course.new(course_params)

    if @course.save
      redirect_to @course, notice: "Course was successfully created."
    else
      render :new
    end
  end

  def update
    if @course.update(course_params)
      redirect_to @course, notice: "Course was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @course.destroy
    redirect_to courses_url, notice: "Course was successfully destroyed."
  end

  private

  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:number, :name, :core_elective)
  end
end
