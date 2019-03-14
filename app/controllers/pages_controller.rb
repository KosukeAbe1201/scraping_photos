require 'open-uri'

class PagesController < ActionController::Base

  def create
    redirect_to root_path(url_params: params[:url])
  end

  def new
    @photos = []
    if params[:url_params]
      doc = Nokogiri::HTML(open(params[:url_params]))
      doc.css('img').each do |photo|
        @photos << photo[:src]
      end
    end
  end
end
