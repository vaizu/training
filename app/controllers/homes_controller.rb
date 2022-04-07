class HomesController < ApplicationController
  def top
    @news = News.order('id DESC').limit(3)
  end

end
