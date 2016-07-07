class CandidatesController < ApplicationController
  def index
    # @client = Congress::Client.new(ENV["CONGRESS_SECRET_KEY"])
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
    redirect_to candidates_path
  end
  def edit
    @candidate = Candidate.find(params[:id])
  end
  def update
    @candidate = Candidate.find(params[:id])
    @candidate.update(candidate_params)
    redirect_to @candidate
  end

  private
  def candidate_params
    params.require(:candidate).permit(:first_name, :last_name, :party, :jurisdiction, :incumbent)
  end
end
