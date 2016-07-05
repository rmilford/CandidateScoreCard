class IssuesController < ApplicationController
  def index
    redirect_to candidates_path
  end

  # new
  def new
    @issue = Issue.new
  end

  # create
  def create
    @issue = Issue.create(issue_params)
    redirect_to candidate_path(Candidate.find(issue_params[:candidate_id]))
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
