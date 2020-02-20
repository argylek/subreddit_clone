class TopicsController < ApplicationController
  before_action :set_sub

  def index
    @topics = @sub.topics
  end

  def new
    @topic = @sub.topics.new
    render partial: "form"
  end

  def create
    @topic = @sub.topics.new(topics_params)
    if @topic.save
      redirect_to sub_topic_path(@sub, @topic)
      # -- this is the same as the line below it
      # redirect_to [@sub, @topic]
    else
      render :new
    end
  end

  def show
    # @topic = Topic.find(params[:id])
    # these two things do the same thing because of the set_sub method
    # @sub.topics.find(params[:id])
    @topic = Topic.find(params[:id])
  end

  def edit
    @topic = Topic.find(params[:id])
    render partial: 'form'
  end

  def destroy
    @topic = Topic.find(params[:id])
    topic.destroy
    redirect_to sub_topic(@sub)
  end

  def update
    @topic = Topic.find(params[:id])
    if (@topic.update(topic_params))
      redirect_to [@sub, @topic]
      # redirect_to sub_topic_path(@sub, @topic)
    else
      render :new
    end
  end

  private
  def set_sub
    @sub = Sub.find(params[:sub_id])
  end

  def topics_params
    params.require(:topic).permit(:name, :body)
  end

end
