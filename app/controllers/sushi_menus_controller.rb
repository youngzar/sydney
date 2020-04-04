class SushiMenusController < ApplicationController
  before_action :set_sushi_menu, only: [:show, :edit, :update, :destroy]

  # GET /sushi_menus
  # GET /sushi_menus.json
  def index
    @sushi_menus = SushiMenu.all
  end

  # GET /sushi_menus/1
  # GET /sushi_menus/1.json
  def show
  end

  # GET /sushi_menus/new
  def new
    @sushi_menu = SushiMenu.new
  end

  # GET /sushi_menus/1/edit
  def edit
  end

  # POST /sushi_menus
  # POST /sushi_menus.json
  def create
    @sushi_menu = SushiMenu.new(sushi_menu_params)

    respond_to do |format|
      if @sushi_menu.save
        format.html { redirect_to @sushi_menu, notice: 'Sushi menu was successfully created.' }
        format.json { render :show, status: :created, location: @sushi_menu }
      else
        format.html { render :new }
        format.json { render json: @sushi_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sushi_menus/1
  # PATCH/PUT /sushi_menus/1.json
  def update
    respond_to do |format|
      if @sushi_menu.update(sushi_menu_params)
        format.html { redirect_to @sushi_menu, notice: 'Sushi menu was successfully updated.' }
        format.json { render :show, status: :ok, location: @sushi_menu }
      else
        format.html { render :edit }
        format.json { render json: @sushi_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sushi_menus/1
  # DELETE /sushi_menus/1.json
  def destroy
    @sushi_menu.destroy
    respond_to do |format|
      format.html { redirect_to sushi_menus_url, notice: 'Sushi menu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sushi_menu
      @sushi_menu = SushiMenu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sushi_menu_params
      params.require(:sushi_menu).permit(:food_type, :has_order, :menus)
    end
end
