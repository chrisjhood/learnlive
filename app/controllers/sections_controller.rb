class SectionsController < ApplicationController

  # GET /sections
  # GET /sections.json

  def index
    @sections = Section.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sections }
    end
  end

  # GET /sections/1
  # GET /sections/1.json
  def show
    @section = Section.find(params[:id])
    @message = Message.new
    @messages = Message.for_classroom(params[:id])
    @API_KEY = '17321802'

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @section }
    end
  end

  def get_token
    @API_KEY = '17321802'
    @API_SECRET = '3a90fda1362d50aed4b04f3f01456153d2e956be'
    @OTSDK = OpenTok::OpenTokSDK.new @API_KEY, @API_SECRET
    session[:token] = @OTSDK.generateToken :session_id => @session_id, :role => OpenTok::RoleConstants::PUBLISHER

    redirect_to :back
  end

  # GET /sections/new
  # GET /sections/new.json
  def new
    @section = Section.new

    @course_id = params["course_id"]

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @section }
    end
  end

  # GET /sections/1/edit
  def edit
    @section = Section.find(params[:id])
  end

  # POST /sections
  # POST /sections.json
  def create
    @section = Section.new(params[:section])
    #@section.course_id = courses[:id]

    respond_to do |format|
      if @section.save
        format.html { redirect_to @section, notice: 'Section was successfully created.' }
        format.json { render json: @section, status: :created, location: @section }
      else
        format.html { render action: "new" }
        format.json { render json: @section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sections/1
  # PUT /sections/1.json
  def update
    @section = Section.find(params[:id])

    respond_to do |format|
      if @section.update_attributes(params[:section])
        format.html { redirect_to @section, notice: 'Section was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sections/1
  # DELETE /sections/1.json
  def destroy
    @section = Section.find(params[:id])
    @section.destroy

    respond_to do |format|
      format.html { redirect_to sections_url }
      format.json { head :no_content }
    end
  end
end
