class ScorersController < ApplicationController
  before_action :set_scorer, only: [:show, :edit, :update, :destroy]

  # GET /scorers
  # GET /scorers.json
  def index
    @scorers = Scorer.all
  end

  # GET /scorers/1
  # GET /scorers/1.json
  def show
  end

  # GET /scorers/new
  def new
    @scorer = Scorer.new
  end

  # GET /scorers/1/edit
  def edit
  end

  # POST /scorers
  # POST /scorers.json
  def create
    @scorer = Scorer.new(scorer_params)

    respond_to do |format|
      if @scorer.save
        format.html { redirect_to @scorer, notice: 'Scorer was successfully created.' }
        format.json { render :show, status: :created, location: @scorer }
      else
        format.html { render :new }
        format.json { render json: @scorer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scorers/1
  # PATCH/PUT /scorers/1.json
  def update
    respond_to do |format|
      if @scorer.update(scorer_params)
        format.html { redirect_to @scorer, notice: 'Scorer was successfully updated.' }
        format.json { render :show, status: :ok, location: @scorer }
      else
        format.html { render :edit }
        format.json { render json: @scorer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scorers/1
  # DELETE /scorers/1.json
  def destroy
    @scorer.destroy
    respond_to do |format|
      format.html { redirect_to scorers_url, notice: 'Scorer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

# def calculate_score
#     Scorer.all.each do |scorer|
#       :score=:mgr_rating*30+:coworker_rating*20+:client_rating*20+:delay_percentage*-1*30
#     end
#     Scorer.order(':score DESC, employee_id')
#     int count=1;
#     Scorer.all.each do |scorer|
#       :rank=count
#       count++
#     end
# end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scorer
      @scorer = Scorer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scorer_params
      params.require(:scorer).permit(:employee_name, :employee_id, :mgr_rating, :coworker_rating, :client_rating, :delay_percentage, :score, :rank)
    end

end
