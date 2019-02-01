class BlogersController < ApplicationController

before_action :move_to_index, except: :index

  def index
    @blogs = Bloger.all.order("id DESC").page(params[:page]).per(5)
    @word = Word.order("RAND()").first
  end
  def new
    @blog = Bloger.new
    end


  def create
    Bloger.create(name: blog_params[:name], title: blog_params[:title],text: blog_params[:text], user_id: current_user.id)
    redirect_to action: :index
  end

  def show
    @blog = Bloger.find(params[:id])
  end

  def edit
    @blog = Bloger.find(params[:id])
  end

  def update
    bloger = Bloger.find(params[:id])
    bloger.update(blog_params)
    redirect_to action: :index
  end

  def destroy
    bloger = Bloger.find(params[:id])
     bloger.destroy
    redirect_to action: :index

  end
  def move_to_index
      redirect_to action: "index" unless user_signed_in?
    end


private
  def blog_params
    params.require(:bloger).permit(:name, :title, :text)
  end
end
