class AdrressesController < ApplicationController
  before_action :set_adrress, only: [:show, :edit, :update, :destroy]

  # GET /adrresses
  # GET /adrresses.json
  def index
    @adrresses = Adrress.all.page(params[:page]).per(10)
  end

  # GET /adrresses/1
  # GET /adrresses/1.json
  def show
  end

  # GET /adrresses/new
  def new
    @adrress = Adrress.new
  end

  # GET /adrresses/1/edit
  def edit
  end

  # POST /adrresses
  # POST /adrresses.json
  def create
    @adrress = Adrress.new(adrress_params)

    respond_to do |format|
      if @adrress.save
        format.html { redirect_to @adrress, notice: 'Adrress was successfully created.' }
        format.json { render :show, status: :created, location: @adrress }
      else
        format.html { render :new }
        format.json { render json: @adrress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adrresses/1
  # PATCH/PUT /adrresses/1.json
  def update
    respond_to do |format|
      if @adrress.update(adrress_params)
        format.html { redirect_to @adrress, notice: 'Adrress was successfully updated.' }
        format.json { render :show, status: :ok, location: @adrress }
      else
        format.html { render :edit }
        format.json { render json: @adrress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adrresses/1
  # DELETE /adrresses/1.json
  def destroy
    @adrress.destroy
    respond_to do |format|
      format.html { redirect_to adrresses_url, notice: 'Adrress was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adrress
      @adrress = Adrress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adrress_params
      params.require(:adrress).permit(:street, :city, :state, :contact_id)
    end
end
