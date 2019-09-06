class BloggersController < ApplicationController

    def index
        @bloggers = Blogger.all
    end

    def show
        @blogger = Blogger.find_by_id(params[:id])
        @numLikes = 0
        @likesVar = 0
        @topPost = nil
        # binding.pry
        @blogger.posts.each do |p|
            @numLikes += p.likes
            if @likesVar < p.likes
                @likesVar = p.likes
                @topPost = p
            else
                #nothing happens
                
            end
        end
        puts "the top post is #{@topPost}"
        @topPost
    end

end