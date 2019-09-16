class TestsessionsController < ApplicationController
  def create
    user=User.find_by(email:"test@example.com")
    session[:user_id] = user.id
    redirect_to new_post_url, notice: "テストユーザさんがログインしました。"
  end
end
