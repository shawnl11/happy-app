class HappywordsController < ApplicationController
  before_action :set_happyword, only: [:show, :edit, :update, :destroy]
  before_action :set_jokes
  before_action :set_adages

  # GET /happywords
  # GET /happywords.json
  def index
    @happyword = Happyword.all
    @max_joke_id = @jokes.count
    @max_adage_id = @adages.count + @jokes.count
    @rand_joke = @jokes.find(rand(1..@max_joke_id))
    @rand_adage = @adages.find(rand((@max_joke_id + 1)..@max_adage_id))
  end

  # GET /happywords/1
  # GET /happywords/1.json
  def show
  end

  # GET /happywords/new
  def new
    @happyword = Happyword.new
  end

  # GET /happywords/1/edit
  def edit
  end

  # POST /happywords
  # POST /happywords.jsonwith 
  def create
    @happyword = Happyword.new(happyword_params)

    respond_to do |format|
      if @happyword.save
        format.html { redirect_to @happyword, notice: 'Happyword was successfully created.' }
        format.json { render :show, status: :created, location: @happyword }
      else
        format.html { render :new }
        format.json { render json: @happyword.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /happywords/1
  # PATCH/PUT /happywords/1.json
  def update
    respond_to do |format|
      if @happyword.update(happyword_params)
        format.html { redirect_to @happyword, notice: 'Happyword was successfully updated.' }
        format.json { render :show, status: :ok, location: @happyword }
      else
        format.html { render :edit }
        format.json { render json: @happyword.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /happywords/1
  # DELETE /happywords/1.json
  def destroy
    @happyword.destroy
    respond_to do |format|
      format.html { redirect_to happywords_url, notice: 'Happyword was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_happyword
      @happyword = Happyword.find(params[:id])
    end

    def set_jokes
      @jokes = Happyword.where(genre:'joke')
    end

    def set_adages
      @adages = Happyword.where(genre:'adage')
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def happyword_params
      params.require(:happyword).permit(:genre, :phrase)
    end
end
