class CandidateController < ApplicationController
  def index
    @interviews = Interview.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @interviews }
  end
  end
  def redirect_new_interview
    @interviews = Interview.all

    respond_to do |format|
      format.html
      format.xml {render:xml => @interviews}
    end
  end

end
