class TwittersController < ApplicationController
  def index
    @twitter = Twitter.all
  end
  def new
    @twitter = Twitter.new
  end
  def create
    @twitter = Twitter.new(message: params[:twitter][:message],tdate: Time.current)
    title = params[:twitter][:title]
    image = Twitter.new(title: title) 
    image.save 

    
    if @twitter.save
      flash[:notice] = 'Tweet成功だにゃ'
      redirect_to '/'
    else
    
      
      render 'new'
    end
  end
  def destroy
    twitter = Twitter.find(params[:id])
    twitter.destroy
    redirect_to '/'
  end
  def show
    @twitter = Twitter.find(params[:id])
  end
  def edit
    @twitter = Twitter.find(params[:id])
  end
  def update
    twitter = Twitter.find(params[:id])
    twitter.update(message: params[:twitter][:message])
    redirect_to '/'
  end
end
