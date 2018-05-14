class TweetsController < ApplicationController

  #indexアクション
  def index
    @tweets = Tweet.all #Tweetモデルに格納されている情報の全部を取得→変数@tweetに格納！
  end

  #showアクション
  def show

  end

  #newアクション
  def new

  end

  #createアクション
  def create
    @tweet = Tweet.new #Tweetモデルのインスタンスを作成→変数@tweetに格納

    #ユーザーが入力した内容を各パラメータから取得→適切な変数のパラメータに格納していく！
    @tweet.title = params[:tweet][:title] #変数@tweetのtitleパラメータに、paramsのtweetの中のtitleを当てはめる！
    @tweet.content = params[:tweet][:content] #変数@tweetのcontentパラメータに、paramsのtweetのcontentを当てはめる！
    @tweet.save #最後にsaveするのを忘れずに！

    redirect_to '/tweets/index' #createにビューは必要ない(tweetしたらさっさとtweet一覧に戻りたい)ので、createアクションが呼ばれた最後で直接'/tweet/index'に飛ばしちゃう！
  end
end
