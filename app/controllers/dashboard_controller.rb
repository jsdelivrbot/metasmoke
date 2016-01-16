class DashboardController < ApplicationController
#  before_filter :authenticate_user!

  def index
    @reasons = Reason.all.joins(:posts).group("reasons.id").select("reasons.*, count('posts.*') as post_count").order("post_count DESC").to_a
    @posts = Post.all
  end
end
