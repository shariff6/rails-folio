class ReferalsController < ApplicationController
  before_action :set_referal, only: [:show, :edit, :update, :destroy]

  # GET /referals
  # GET /referals.json
  def index
    @referals = Referal.all
  end

  # GET /referals/1
  # GET /referals/1.json
  def show
      @referals = Referal.all
  end

  # GET /referals/new
  def new
    @referal = Referal.new
  end

  # GET /referals/1/edit
  def edit
  end

  # POST /referals
  # POST /referals.json
  def create
    @referal = Referal.new(referal_params)

      if @referal.save
        respond_to do |format|
          flash.now[:notice] = "Thank you for your referal"
        format.html { redirect_to home_index_path(@referal)}
        format.js
      end
      else
         render :new
      end
    end

  # PATCH/PUT /referals/1
  # PATCH/PUT /referals/1.json
  def update
    respond_to do |format|
      if @referal.update(referal_params)
        format.html { redirect_to @referal, notice: 'Referal was successfully updated.' }
        format.json { render :show, status: :ok, location: @referal }
      else
        format.html { render :edit }
        format.json { render json: @referal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /referals/1
  # DELETE /referals/1.json
  def destroy
    @referal.destroy
    respond_to do |format|
      format.html { redirect_to referals_url, notice: 'Referal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_referal
      @referal = Referal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def referal_params
        params.require(:referal).permit(:name,  :reference, :institution)
    end
end
