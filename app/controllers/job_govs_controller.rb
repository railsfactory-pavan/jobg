class JobGovsController < ApplicationController
  before_action :set_job_gov, only: [:show, :edit, :update, :destroy]

  # GET /job_govs
  # GET /job_govs.json
  def index
    @job_govs = JobGov.all
  end

  # GET /job_govs/1
  # GET /job_govs/1.json
  def show
  end

  # GET /job_govs/new
  def new
    @job_gov = JobGov.new
  end

  # GET /job_govs/1/edit
  def edit
  end

  # POST /job_govs
  # POST /job_govs.json
  def create
    @job_gov = JobGov.new(job_gov_params)

    respond_to do |format|
      if @job_gov.save
        format.html { redirect_to @job_gov, notice: 'Job gov was successfully created.' }
        format.json { render :show, status: :created, location: @job_gov }
      else
        format.html { render :new }
        format.json { render json: @job_gov.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_govs/1
  # PATCH/PUT /job_govs/1.json
  def update
    respond_to do |format|
      if @job_gov.update(job_gov_params)
        format.html { redirect_to @job_gov, notice: 'Job gov was successfully updated.' }
        format.json { render :show, status: :ok, location: @job_gov }
      else
        format.html { render :edit }
        format.json { render json: @job_gov.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_govs/1
  # DELETE /job_govs/1.json
  def destroy
    @job_gov.destroy
    respond_to do |format|
      format.html { redirect_to job_govs_url, notice: 'Job gov was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_gov
      @job_gov = JobGov.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_gov_params
      params.require(:job_gov).permit(:post, :vacancy, :qualification, :fitness, :age, :place, :fee, :date, :link)
    end
end
