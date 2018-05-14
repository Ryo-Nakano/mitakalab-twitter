class UsersController < ApplicationController

  #indexアクション
  def index
  end

  #showアクション
  #このアクションの中でやるのはparams[:username]の値に応じて変数@userの中に入る値を変えるっていう事だけ！
  #表示に関しては全部view側がやる！
  def show
    # if params[:username] == 'ryoopan' #usernameが"ryoopan"の時
    #   @user = User.find_by(:username => 'ryooopan') #Userモデルの中から:usernameが"ryoopan"のものを探してきて、それを変数@userの中に格納！
    # elsif params[:username] == 'moyahima' #usernameが"miyahima"の時
    #   @user = User.find_by(:username => 'moyahima') #Userモデルの中から:usernameが"miyahima"のものを探してきて、それを変数@userの中に格納！
    # end

    @user = User.find_by(:username => params[:username])
    # params[:username]でUserモデルを検索して、取得した値を変数@userに格納！
  end
end
