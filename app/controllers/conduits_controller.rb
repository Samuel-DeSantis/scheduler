class ConduitsController < ApplicationController
  before_action :set_conduit, only: [ :show, :edit, :update, :destroy ]
  before_action :set_project, only: [ :new, :create, :show, :edit, :update, :destroy ]
  before_action :require_login
  # before_action :protect_conduit_paths

  # GET /conduits or /conduits.json
  def index
    @conduits = Conduit.all
  end

  # GET /conduits/1 or /conduits/1.json
  def show
  end

  # GET /conduits/new
  def new
    @conduit = Conduit.new
  end

  # GET /conduits/1/edit
  def edit
    # @projects = Project.all
  end

  # POST /conduits or /conduits.json
  def create
    @conduit = Conduit.new(conduit_params)
    # @conduit.project_id = @project.id

    respond_to do |format|
      if @conduit.save
        format.html { redirect_to conduit_url(@conduit), notice: "Conduit was successfully created." }
        format.json { render :show, status: :created, location: @conduit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @conduit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conduits/1 or /conduits/1.json
  def update
    respond_to do |format|
      if @conduit.update(conduit_params)
        format.html { redirect_to conduit_url(@conduit), notice: "Conduit was successfully updated." }
        format.json { render :show, status: :ok, location: @conduit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @conduit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conduits/1 or /conduits/1.json
  def destroy
    @conduit.destroy

    respond_to do |format|
      format.html { redirect_to conduits_url, notice: "Conduit was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conduit
      @conduit = Conduit.find(params[:id])
    end

    def set_project
      @project = Project.find_by_id(params[:project_id])
    end

    # def protect_conduit_paths
    #   unless User.find_by_id(session[:user_id]).projects.include? @project
    #     redirect_to projects_path
    #   end
    # end

    # Only allow a list of trusted parameters through.
    def conduit_params
      params.require(:conduit).permit(:tag, :size, :to, :from, :project_id)
    end
end
