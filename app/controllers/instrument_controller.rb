class InstrumentController < ApplicationController
  def index
    @instruments = Instrument.all
  end

  def show
  end

  def new
    @instrument = Instrument.new
  end

  def edit
  end

  def create
    @instrument = Instrument.new(instrument_params)

    respond_to do |f|
      if @instrument.save
        format.html { redirect_to @ instrument, notice: 'Your Instrument was successfully created.'}
        format.json { render :show, :status: :created, location: @instrument }

      else
        format.html { render :new }
        format.json { render json: @
          instrument.errors, status: :unprocessable_entity }
        end
      end
    end

    def update
      respond_to do |f|
        if @instrument_update(instrument_params)
          format.html { redirect_to @instrument, notice: 'Instrument was successfully updated. Great Job!' }
          format.json { render :show, status: :ok, location: @instrument }
        else
          format.html { render :edit }
          format.json { render json: @instrument.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @instrument.destroy
      respond_to do |f|
        format.html { redirect_to instruments_url, notice: 'Your instrument was successfully destroyed.'}
        format.json { head :no_content }
      end
    end

    private

    def set_instrument
      @instrument = Instrument.find(params[:id])
    end

    def instrument_params
      params.require(:instrument).permit(:type)
    end
  end
end
