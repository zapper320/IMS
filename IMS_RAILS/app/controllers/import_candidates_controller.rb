
require 'fastercsv' 
class ImportCandidatesController < ApplicationController
  # GET /import_candidates
  # GET /import_candidates.xml
  def index
    @import_candidates = ImportCandidate.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @import_candidates }
    end
  end

  def csv_import
      file = params[:csv_import][:file]
      logcount=0
      Interview.transaction do
        FasterCSV.parse(file, :headers => true) do |row|
          Interview.create!(row.to_hash)
          logcount += 1
        end
      end
      flash[:notice] = "Successfully added #{logcount} Participant(s)."
      redirect_to interviews_path
    rescue => exception
      # If an exception is thrown, the transaction rolls back and we end up in this rescue block
      error = ERB::Util.h(exception.to_s) # get the error and HTML escape it
      flash[:error] = "Error adding logs.  (#{error}).  Please try again."
      redirect_to :action => :index
    end
  # GET /import_candidates/1
  # GET /import_candidates/1.xml
  def show
    @import_candidate = ImportCandidate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @import_candidate }
    end
  end

  # GET /import_candidates/new
  # GET /import_candidates/new.xml
  def new
    @import_candidate = ImportCandidate.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @import_candidate }
    end
  end

  # GET /import_candidates/1/edit
  def edit
    @import_candidate = ImportCandidate.find(params[:id])
  end

  # POST /import_candidates
  # POST /import_candidates.xml
  def create
    @import_candidate = ImportCandidate.new(params[:import_candidate])

    respond_to do |format|
      if @import_candidate.save
        format.html { redirect_to(@import_candidate, :notice => 'ImportCandidate was successfully created.') }
        format.xml  { render :xml => @import_candidate, :status => :created, :location => @import_candidate }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @import_candidate.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /import_candidates/1
  # PUT /import_candidates/1.xml
  def update
    @import_candidate = ImportCandidate.find(params[:id])

    respond_to do |format|
      if @import_candidate.update_attributes(params[:import_candidate])
        format.html { redirect_to(@import_candidate, :notice => 'ImportCandidate was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @import_candidate.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /import_candidates/1
  # DELETE /import_candidates/1.xml
  def destroy
    @import_candidate = ImportCandidate.find(params[:id])
    @import_candidate.destroy

    respond_to do |format|
      format.html { redirect_to(import_candidates_url) }
      format.xml  { head :ok }
    end
  end
end
