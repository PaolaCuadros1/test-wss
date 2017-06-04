class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]

  # GET /clients
  # GET /clients.json
  def index
    #@clients = Client.all
    
    @clients = Client.paginate(:page => params[:page], :per_page => 10)
    # raise @clients.inspect.to_s
  end

  # GET /clients/1
  # GET /clients/1.json
  def show
  end

  # GET /clients/new
  def new
    @client = Client.new
  end

  # GET /clients/1/edit
  def edit
  end

  # POST /clients
  # POST /clients.json
  def create
    @client = Client.new(client_params)
    # raise @client.inspect.to_s

    # unless params[:client].try(:[], 'birthdate(1i)').blank?
    #  @client.birthdate = Date.civil(params[:client].try(:[], 'birthdate(1i)').to_i,params[:client].try(:[], 'birthdate(2i)').to_i,params[:client].try(:[], 'birthdate(3i)').to_i)
    # end

    respond_to do |format|
      if @client.save
        format.html { redirect_to @client, notice: I18n.t('successful.models.clients.created') }
        format.json { render :show, status: :created, location: @client }
      else
        # raise @client.inspect.to_s
        format.html { render :new }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clients/1
  # PATCH/PUT /clients/1.json
  def update
    respond_to do |format|
      if @client.update(client_params)
        format.html { redirect_to @client, notice: I18n.t('successful.models.clients.updated') }
        format.json { render :show, status: :ok, location: @client }
      else
        format.html { render :edit }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1
  # DELETE /clients/1.json
  def destroy
    @client.destroy
    respond_to do |format|
      format.html { redirect_to clients_url, notice: I18n.t('successful.models.clients.deleted') }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_params
      params.require(:client).permit(:first_name, :last_name, :type_id, :number_id, :gender, :country_id, :city_id, :departament_id, :avatar, :birthdate)
    end
end
