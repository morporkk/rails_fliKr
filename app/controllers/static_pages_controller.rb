class StaticPagesController < ApplicationController
  def home
    search = params[:username]
    search = "186443646@N03" if search.nil? || search.empty?
    @photos = flickr.photos.search(user_id: search, extras: "url_o")
  end
end
