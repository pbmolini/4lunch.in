class CanteensController < ApplicationController
  before_action :set_canteen, only: [:show, :edit, :update, :destroy]

  # GET /canteens
  # GET /canteens.json
  def index
    @canteens = Canteen.all
  end

  # GET /canteens/1
  # GET /canteens/1.json
  def show
    if @canteen.menus.find_by(date: Date.today)
      @menu = @canteen.menus.find_by(date: Date.today)
    else
      @menu = Menu.new(date: Date.today, canteen: @canteen)
    end

    @upcoming_menus = @canteen.menus.where 'date > ?', Date.today
    @past_menus = @canteen.menus.where 'date < ?', Date.today
  end

  # GET /canteens/new
  def new
    @canteen = Canteen.new
  end

  # GET /canteens/1/edit
  def edit
  end

  # POST /canteens
  # POST /canteens.json
  def create
    @canteen = Canteen.new(canteen_params)

    respond_to do |format|
      if @canteen.save
        format.html { redirect_to @canteen, notice: 'Canteen was successfully created.' }
        format.json { render action: 'show', status: :created, location: @canteen }
      else
        format.html { render action: 'new' }
        format.json { render json: @canteen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /canteens/1
  # PATCH/PUT /canteens/1.json
  def update
    respond_to do |format|
      if @canteen.update(canteen_params)
        format.html { redirect_to @canteen, notice: 'Canteen was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @canteen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /canteens/1
  # DELETE /canteens/1.json
  def destroy
    @canteen.destroy
    respond_to do |format|
      format.html { redirect_to canteens_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_canteen
      @canteen = Canteen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def canteen_params
      params.require(:canteen).permit(:name, :webcam_url, dishes_attributes: [:id,:name,:kcal,:dish_type,:_destroy])
    end
end
