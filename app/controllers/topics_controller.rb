class TopicsController < ApplicationController

  def show
    @topic.find(params[:id])
  end

end
