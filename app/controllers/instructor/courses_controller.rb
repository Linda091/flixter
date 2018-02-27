class Instructor::CoursesController < ApplicationController
  before_action :authenticate_user!

  def new
    @course = Course.new
  end

  def create
  end

  def edit
  end

  def delete
  end

end
