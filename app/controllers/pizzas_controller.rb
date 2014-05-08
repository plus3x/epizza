class PizzasController < ApplicationController
  before_action :set_pizza, only: [:show, :edit, :update, :destroy]

  # GET /pizzas
  def index
    @pizzas = Pizza.all
  end

  # GET /pizzas/1
  def show
  end

  # GET /pizzas/new
  def new
    @pizza = Pizza.new
  end

  # GET /pizzas/1/edit
  def edit
  end

  # POST /pizzas
  def create
    if ( @pizza = Pizza.new(pizza_params) ).save
      redirect_to @pizza, notice: 'Pizza was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /pizzas/1
  def update
    if @pizza.update(pizza_params)
      redirect_to @pizza, notice: 'Pizza was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /pizzas/1
  def destroy
    @pizza.destroy
    redirect_to pizzas_url, notice: 'Pizza was successfully destroyed.'
  end

  private
    def set_pizza
      @pizza = Pizza.find(params[:id])
    end

    def pizza_params
      params.require(:pizza).permit(:type)
    end
end
