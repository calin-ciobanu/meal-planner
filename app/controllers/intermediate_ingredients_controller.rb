class IntermediateIngredientsController < ApplicationController
  before_action :set_intermediate_ingredient, only: [:show, :edit, :update, :destroy]

  # GET /intermediate_ingredients
  # GET /intermediate_ingredients.json
  def index
    @intermediate_ingredients = IntermediateIngredient.all
  end

  # GET /intermediate_ingredients/1
  # GET /intermediate_ingredients/1.json
  def show
  end

  # GET /intermediate_ingredients/new
  def new
    @intermediate_ingredient = IntermediateIngredient.new
  end

  # GET /intermediate_ingredients/1/edit
  def edit
  end

  # POST /intermediate_ingredients
  # POST /intermediate_ingredients.json
  def create
    @intermediate_ingredient = IntermediateIngredient.new(intermediate_ingredient_params)

    respond_to do |format|
      if @intermediate_ingredient.save
        format.html { redirect_to @intermediate_ingredient, notice: 'Intermediate ingredient was successfully created.' }
        format.json { render :show, status: :created, location: @intermediate_ingredient }
      else
        format.html { render :new }
        format.json { render json: @intermediate_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /intermediate_ingredients/1
  # PATCH/PUT /intermediate_ingredients/1.json
  def update
    respond_to do |format|
      if @intermediate_ingredient.update(intermediate_ingredient_params)
        format.html { redirect_to @intermediate_ingredient, notice: 'Intermediate ingredient was successfully updated.' }
        format.json { render :show, status: :ok, location: @intermediate_ingredient }
      else
        format.html { render :edit }
        format.json { render json: @intermediate_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intermediate_ingredients/1
  # DELETE /intermediate_ingredients/1.json
  def destroy
    @intermediate_ingredient.destroy
    respond_to do |format|
      format.html { redirect_to intermediate_ingredients_url, notice: 'Intermediate ingredient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intermediate_ingredient
      @intermediate_ingredient = IntermediateIngredient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def intermediate_ingredient_params
      params.require(:intermediate_ingredient).permit(:name, :uid, :stock, :price, :can_make, :relative_preparation_time, :recipe_url)
    end
end
