class LibratiesController < ApplicationController
  before_action :set_libraty, only: [:show, :edit, :update, :destroy]

  # GET /libraties
  # GET /libraties.json
  def index
    @libraties = Libraty.all
  end

  # GET /libraties/1
  # GET /libraties/1.json
  def show
  end

  # GET /libraties/new
  def new
    @libraty = Libraty.new
  end

  # GET /libraties/1/edit
  def edit
  end

  # POST /libraties
  # POST /libraties.json
  def create
    @libraty = Libraty.new(libraty_params)

    respond_to do |format|
      if @libraty.save
        format.html { redirect_to @libraty, notice: 'Libraty was successfully created.' }
        format.json { render :show, status: :created, location: @libraty }
      else
        format.html { render :new }
        format.json { render json: @libraty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /libraties/1
  # PATCH/PUT /libraties/1.json
  def update
    respond_to do |format|
      if @libraty.update(libraty_params)
        format.html { redirect_to @libraty, notice: 'Libraty was successfully updated.' }
        format.json { render :show, status: :ok, location: @libraty }
      else
        format.html { render :edit }
        format.json { render json: @libraty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /libraties/1
  # DELETE /libraties/1.json
  def destroy
    @libraty.destroy
    respond_to do |format|
      format.html { redirect_to libraties_url, notice: 'Libraty was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_libraty
      @libraty = Libraty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def libraty_params
      params.require(:libraty).permit(:name, :Pnumber)
    end
end
