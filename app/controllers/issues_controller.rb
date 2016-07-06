class IssuesController < ApplicationController
  def index
  @candidate = Candidate.find(params[:candidate_id])
  end

  # new
  def new
    @candidate = Candidate.find(params[:candidate_id])
    @issue = Issue.new
  end

  # create
  def create
    @candidate = Candidate.find(params[:candidate_id])
    @issue = @candidate.issues.create(issue_params)
    redirect_to candidate_path(@candidate)
  end

  #show
  def show
    @issue = Issue.find(params[:id])
  end

  # edit
  def edit
    @issue = Issue.where(candidate_id: params[:id]).take
  end

  # update
  def update
    @issue = Issue.find(params[:id])
    @issue.update(issue_params)

    redirect_to issues_path(@issue)
  end

  # destroy
  def destroy
    @issue = Issue.find(params[:id])
    @issue.destroy

    redirect_to candidates_path
  end

  private
  def issue_params
    params.require(:issue).permit(:immigration, :net_neutrality, :climate_change, :gun_control, :intellectual_property, :marijuana, :election_cycle, :candidate_id)
  end

end
