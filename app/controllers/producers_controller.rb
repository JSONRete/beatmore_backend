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

  # DELETE /producers/1
  def destroy
    @producer.destroy
  end

  def create_prod
    name = params[:search]
    data = HTTParty.get("https://musicbrainz.org/ws/2/artist?query=#{name}&fmt=json&limit=1", {
      headers: {"User-Agent" => "Httparty"},
      debug_output: STDOUT, # To show that User-Agent is Httparty
    })
      hash = {
        name: data['artists'][0]['name'],
        legal_name: data['artists'][0]['aliases'][1]['name'],
        begin_area: data['artists'][0]['begin-area']['name'],
        birthday: data['artists'][0]['aliases'][0]['begin-date']

      }
    producer = Producer.create(hash)
    render json: producer
  end
  # def create_prod 
  #   hash_data = MusicBrainz::Artist.search(name)
  #   binding.pry
  # end

  # hashData = MusicBranz
	# Producer.create(name: hash_data[“name”], …, …, …, )

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producer
      @producer = Producer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def producer_params
      params.require(:producer).permit(:name, :raiting, :begin_area, :area, :birthday)
    end
end
