class CandidatesController < ApplicationController

  def index
    @candidates = Candidate.all
  end
  def show
    @candidate = Candidate.find(params[:id])
  end
  def new
    @candidate = Candidate.new
  end
  def create
    @candidate = Candidate.create(candidate_params)
    redirect_to @candidate
  end
  def destroy
    @candidate = Candidate.find(params[:id])
    @candidate.destroy
    redirect_to candidate_path

  end
  private
  def candidate_params
    params.require(:candidate).permit(:first_name, :last_name, :party, :jurisdiction, :incumbent)
  end
end
