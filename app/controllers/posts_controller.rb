class PostsController < ApplicationController

    def show
        @post = Post.find(params["id"])
      end
    
      def new
        @post = Post.new
        @place = Place.find(params["places_id"])
        @post.place_id = @place.id
      end
    
      def create
        @post = Post.new(params["post"])
        @post.save
        redirect_to "/post/#{@post.place_id}"
      end
    

end
