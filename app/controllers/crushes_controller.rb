class CrushesController < ApplicationController
  before_action :set_crush, only: [:show, :edit, :update, :destroy]

  # GET /crushes
  # GET /crushes.json
  def index
    @crushes = Crush.search(params[:search])
    respond_to do |format|
        if params.has_key?(:template)
            if params[:template] == 'false'
                format.html {render partial: 'table.html', locals: {crushes: @crushes}}
            else
                format.html
            end
        else
            format.html
        end
        format.html
        format.json {render json: @crushes}
    end
  end

  # GET /crushes/1
  # GET /crushes/1.json
  def show
  end

  # GET /crushes/new
  def new
    @crush = Crush.new
  end

  # GET /crushes/1/edit
  def edit
  end

  # POST /crushes
  # POST /crushes.json
  def create
    @crush = Crush.new(crush_params)

    respond_to do |format|
      if @crush.save
        format.html { redirect_to @crush, notice: 'Crush was successfully created.' }
        format.json { render :show, status: :created, location: @crush }
      else
        format.html { render :new }
        format.json { render json: @crush.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crushes/1
  # PATCH/PUT /crushes/1.json
  def update
    respond_to do |format|
      if @crush.update(crush_params)
        format.html { redirect_to @crush, notice: 'Crush was successfully updated.' }
        format.json { render :show, status: :ok, location: @crush }
      else
        format.html { render :edit }
        format.json { render json: @crush.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crushes/1
  # DELETE /crushes/1.json
  def destroy
    @crush.destroy
    respond_to do |format|
      format.html { redirect_to crushes_url, notice: 'Crush was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crush
      @crush = Crush.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crush_params
      params.require(:crush).permit(:crush_number, :message_for_them, :why_you_like_them, :things_you_should_change)
    end
end
