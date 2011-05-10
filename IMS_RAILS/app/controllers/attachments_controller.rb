require 'paperclip'
class AttachmentsController < ApplicationController
  before_filter :get_document
  grant :admin,:all

  def destroy
		@attachment = @interview.attachments.find(params[:id])
		@interview.destroy && @attachment.destroy

    respond_to do |format|
      format.html { redirect_to(list_documents_url) }
      format.xml { head :ok }
      format.js {
        render :update do |page|
        end
      }
    end
	end

  def download
    @attachment = @interview.attachments.find(params[:id])
    send_file @attachment.data.path, :type => @attachment.data_content_type, :disposition => 'attachment', :x_sendfile => true
  end

private
  def get_document
    @interview = Interview.find(params[:document_id])
  end
end
