require_dependency "planet_express/application_controller"

module PlanetExpress
  class ZoidbergsController < ApplicationController
    before_action :set_zoidberg, only: [:show, :edit, :update, :destroy]

    # GET /zoidbergs
    def index
      @zoidbergs = Zoidberg.all
    end

    # GET /zoidbergs/1
    def show
    end

    # GET /zoidbergs/new
    def new
      @zoidberg = Zoidberg.new
    end

    # GET /zoidbergs/1/edit
    def edit
    end

    # POST /zoidbergs
    def create
      @zoidberg = Zoidberg.new(zoidberg_params)

      if @zoidberg.save
        redirect_to @zoidberg, notice: 'Zoidberg was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /zoidbergs/1
    def update
      if @zoidberg.update(zoidberg_params)
        redirect_to @zoidberg, notice: 'Zoidberg was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /zoidbergs/1
    def destroy
      @zoidberg.destroy
      redirect_to zoidbergs_url, notice: 'Zoidberg was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_zoidberg
        @zoidberg = Zoidberg.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def zoidberg_params
        params.require(:zoidberg).permit(:name)
      end
  end
end
