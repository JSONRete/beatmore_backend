class ProducersController < ApplicationController
  before_action :set_producer, only: [:show, :update, :destroy]

  # GET /producers
  def index
    @producers = Producer.all

    render json: @producers
  end

  # GET /producers/1
  def show
    render json: @producer
  end

  # POST /producers
  def create
    @producer = Producer.new(producer_params)

    if @producer.save
      render json: @producer, status: :created, location: @producer
    else
      render json: @producer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /producers/1
  def update
    if @producer.update(producer_params)
      render json: @producer
    else
      render json: @producer.errors, status: :unprocessable_entity
    end
  end

  def create_prod 
    hash_data = MusicBrainz::Artist.search("Jet")
    binding.pry
  end

  

  # DELETE /producers/1
  def destroy
    @producer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producer
      @producer = Producer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def producer_params
      params.require(:producer).permit(:name, :gender, :begin_area, :area, :birthday)
    end
end
