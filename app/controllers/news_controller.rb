class NewsController < ApplicationController
  def new
    @news = News.new
  end

  def create
    @news = News.new(news_params)
    if @news.save
      redirect_to news_path(@news)
    else
      render "new"
    end
  end

  def show
    @news = News.find(params[:id])
  end

  def index
    @news = News.new
    @news_list = News.all
  end

  def edit
    @news = News.find(params[:id])
  end

  def update
    @news = News.find(params[:id])
    if @news.update(news_params)
      redirect_to news_path(@news), notice: "You have updated book successfully."
    else
      render "edit"
    end
  end

  def destroy
    @news = News.find(params[:id])
    @news.destroy
    redirect_to "/news"
  end



  private
  def news_params
    params.require(:news).permit(:title,:body)
  end
end
