class PostsController < ApplicationController

    def index
        @posts = Post.all
    end

    def show
        @post = Post.find_by_id(params[:id])
        @blogger = Blogger.find_by_id(@post.blogger_id)
        @destination = Destination.find_by_id(@post.destination_id)
    end

    def new

    end

    def create
        @newPost = Post.create(params)
    end

end