class WebHostingsController < ApplicationController
  before_action :set_web_hosting, only: [:show, :edit, :update, :destroy]

  # GET /web_hostings
  # GET /web_hostings.json
  def index
    @web_hostings = WebHosting.all
  end

  # GET /web_hostings/1
  # GET /web_hostings/1.json
  def show
  end

  # GET /web_hostings/new
  def new
    @web_hosting = WebHosting.new
  end

  # GET /web_hostings/1/edit
  def edit
  end

  # POST /web_hostings
  # POST /web_hostings.json
  def create
    @web_hosting = WebHosting.new(web_hosting_params)

    respond_to do |format|
      if @web_hosting.save
        format.html { redirect_to @web_hosting, notice: 'Web hosting was successfully created.' }
        format.json { render :show, status: :created, location: @web_hosting }
      else
        format.html { render :new }
        format.json { render json: @web_hosting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /web_hostings/1
  # PATCH/PUT /web_hostings/1.json
  def update
    respond_to do |format|
      if @web_hosting.update(web_hosting_params)
        format.html { redirect_to @web_hosting, notice: 'Web hosting was successfully updated.' }
        format.json { render :show, status: :ok, location: @web_hosting }
      else
        format.html { render :edit }
        format.json { render json: @web_hosting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /web_hostings/1
  # DELETE /web_hostings/1.json
  def destroy
    @web_hosting.destroy
    respond_to do |format|
      format.html { redirect_to web_hostings_url, notice: 'Web hosting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_web_hosting
      @web_hosting = WebHosting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def web_hosting_params
      params.require(:web_hosting).permit(:title, :context, :image)
    end
end
