class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
    @topic.blogs.

    if logged_in?(:site_admin)
      @blogs = @topic.blogs.recent.page(params[:page]).per(5)
    else
      @blogs = @topic.blogs.published.page(params[:page]).per(5)
    end
  end
end
