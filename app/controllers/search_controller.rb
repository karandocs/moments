class SearchController < ApplicationController
  # GET /user_onboards
  # GET /user_onboards.json
  def index
    @crushes = Crush.all
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

  # GET /user_onboards/1
  # GET /user_onboards/1.json
  def show
  end

  # GET /user_onboards/new
  def new
  end

  # GET /user_onboards/1/edit
  def edit
  end

  # POST /user_onboards
  # POST /user_onboards.json
  def create

  end

  # PATCH/PUT /user_onboards/1
  # PATCH/PUT /user_onboards/1.json
  def update

  end

  def destroy

  end
end
