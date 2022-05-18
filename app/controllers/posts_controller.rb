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
        @post["date"]=params["post"]["posted_on"]
        @posts.save
        redirect_to "/places"
    end




end
