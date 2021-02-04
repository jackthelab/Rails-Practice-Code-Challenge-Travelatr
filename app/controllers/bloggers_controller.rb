class BloggersController < ApplicationController
    def index
        @bloggers = Blogger.all
    end

    def show
        @blogger = Blogger.find_by(id: params[:id])
    end

    def new
        @blogger = Blogger.new
    end

    def create
        @blogger = Blogger.new(name: params[:blogger][:name], age: params[:blogger][:age], bio: params[:blogger][:bio])

        if @blogger.save
            redirect_to blogger_path(@blogger)
        else
            render :new
        end

    end

end