class SpeedpaintsController < ApplicationController
  before_filter :auth_redirect, only: [:new, :edit]
  before_action :set_speedpaint, only: [:show, :edit, :update, :destroy]

  # GET /speedpaints
  # GET /speedpaints.json
  def index
    @speedpaints = Speedpaint.all
  end

  # GET /speedpaints/1
  # GET /speedpaints/1.json
  def show
  end

  # GET /speedpaints/new
  def new
    @speedpaint = Speedpaint.new
  end

  # GET /speedpaints/1/edit
  def edit
  end

  # POST /speedpaints
  # POST /speedpaints.json
  def create
    @speedpaint = Speedpaint.new(speedpaint_params)

    respond_to do |format|
      if @speedpaint.save
        format.html { redirect_to @speedpaint, notice: 'Speedpaint was successfully created.' }
        format.json { render :show, status: :created, location: @speedpaint }
      else
        format.html { render :new }
        format.json { render json: @speedpaint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /speedpaints/1
  # PATCH/PUT /speedpaints/1.json
  def update
    respond_to do |format|
      if @speedpaint.update(speedpaint_params)
        format.html { redirect_to @speedpaint, notice: 'Speedpaint was successfully updated.' }
        format.json { render :show, status: :ok, location: @speedpaint }
      else
        format.html { render :edit }
        format.json { render json: @speedpaint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /speedpaints/1
  # DELETE /speedpaints/1.json
  def destroy
    @speedpaint.destroy
    respond_to do |format|
      format.html { redirect_to speedpaints_url, notice: 'Speedpaint was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_speedpaint
      @speedpaint = Speedpaint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def speedpaint_params
      params.require(:speedpaint).permit(:name, :description, :url, :creation_date, :video_tag_id)
    end
end
