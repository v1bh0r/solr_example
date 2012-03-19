class CandidatesController < ApplicationController
  def index
    search = Candidate.search do
      fulltext params[:search]
    end
    @candidates = search.results
  end

  def show
    @candidate = Candidate.find(params[:id])
  end

  def new
    @candidate = Candidate.new
  end

  def create
    @candidate = Candidate.new(params[:candidate])
    if @candidate.save
      redirect_to @candidate, :notice => "Successfully created candidate."
    else
      render :action => 'new'
    end
  end

  def edit
    @candidate = Candidate.find(params[:id])
  end

  def update
    @candidate = Candidate.find(params[:id])
    if @candidate.update_attributes(params[:candidate])
      redirect_to @candidate, :notice  => "Successfully updated candidate."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @candidate = Candidate.find(params[:id])
    @candidate.destroy
    redirect_to candidates_url, :notice => "Successfully destroyed candidate."
  end
end
