class ShareablesController < ApplicationController
  before_action :set_shareable, only: [:show, :edit, :update, :destroy]

  # GET /shareables
  # GET /shareables.json
  def index
    @shareables = Shareable.all
  end

  # GET /shareables/1
  # GET /shareables/1.json
  def show
  end

  # GET /shareables/new
  def new
    @shareable = Shareable.new
  end

  # GET /shareables/1/edit
  def edit
  end

  # POST /shareables
  # POST /shareables.json
  def create
    @shareable = Shareable.new(shareable_params)

    respond_to do |format|
      if @shareable.save
        format.html { redirect_to @shareable, notice: 'Shareable was successfully created.' }
        format.json { render :show, status: :created, location: @shareable }
      else
        format.html { render :new }
        format.json { render json: @shareable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shareables/1
  # PATCH/PUT /shareables/1.json
  def update
    respond_to do |format|
      if @shareable.update(shareable_params)
        format.html { redirect_to @shareable, notice: 'Shareable was successfully updated.' }
        format.json { render :show, status: :ok, location: @shareable }
      else
        format.html { render :edit }
        format.json { render json: @shareable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shareables/1
  # DELETE /shareables/1.json
  def destroy
    @shareable.destroy
    respond_to do |format|
      format.html { redirect_to shareables_url, notice: 'Shareable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shareable
      @shareable = Shareable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shareable_params
      params.require(:shareable).permit(:title, :link, :is_public)
    end
end
