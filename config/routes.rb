Rails.application.routes.draw do
  get 'tweets/index'
  get 'tweets/show'
  get 'tweets/new'
  get 'index/show'
  post 'tweets' => 'tweets#create' #URL"/tweets"が呼ばれたらtweetsコントローラのcreateアクションを呼ぶよ！

  get 'users/index'
  # ユーザーによって可変のURLにアクセス→usersコントローラのshowアクションを呼び出す！
  get 'users/show/:username' => 'users#show'


end
