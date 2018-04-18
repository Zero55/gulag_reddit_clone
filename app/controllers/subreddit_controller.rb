class SubredditController < ApplicationController
  before_action: :authenticate_user!, only: [:create, :destroy]

  def create
    @subreddit = current_user.subreddits.build(params)
    
  end

  def destroy
  end

  def show
  end
end
