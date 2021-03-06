class CoursesController < ApplicationController


  # layout 'homepage', :only => [:index]

  #before_filter :require_admin, :only => [:destroy, :edit] 
  # before_filter :require_authorization, :only => [:destroy, :edit] 


  before_filter :require_login, :except => [:index, :show] 
  before_filter :require_authorization_or_admin, :only => [:destroy, :edit] 
  
  

  def require_authorization_or_admin


      if current_user.role != "Admin" && current_user.id != Course.find(params[:id]).user_id
        redirect_to root_url
      end

    # redirect_to root_url, notice: "This is a restricted area." unless current_user.role == "Admin"


    # redirect_to root_url, notice: "You are not authorized." unless current_user.id == Course.find(params[:id]).user_id
  end

  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @courses }
    end
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
    @course = Course.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @course }
    end
  end

  # GET /courses/new
  # GET /courses/new.json
  def new
    @course = Course.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @course }
    end
  end

  # GET /courses/1/edit
  def edit

    @course = Course.find(params[:id])


  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(params[:course])
    @course.user_id = current_user.id

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render json: @course, status: :created, location: @course }
      else
        format.html { render action: "new" }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /courses/1
  # PUT /courses/1.json
  def update
    @course = Course.find(params[:id])

    respond_to do |format|
      if @course.update_attributes(params[:course])
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course = Course.find(params[:id])
    @course.destroy

    respond_to do |format|
      format.html { redirect_to courses_url }
      format.json { head :no_content }
    end
  end
end
