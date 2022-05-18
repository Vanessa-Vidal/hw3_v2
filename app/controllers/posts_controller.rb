class PostsController < ApplicationController

    def index
        @posts = Place.all
      end

    def new
        @post= Place.new
    end

    def create
        @post=Place.new
        @post["title"]=params["post"]["title"]
        @post["description"]=params["post"]["description"]
        @post["posted_on"]=params["post"]["posted_on"]
        @post["place_id"]=params["post"]["place_id"]
        @posts.save
        redirect_to "/places"
    end




end
