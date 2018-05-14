#seeds.rbは初期データを入れておく為のファイル！

@user = User.new #Userモデルのインスタンス(コピー)を作って、変数@user(viewからもアクセス可能)に格納！
@user.name = 'Ryo Suzuki' #変数@userのnameプロパティに対して値'RyoSuzuki'を代入！
@user.username = 'ryooopan'
@user.location = 'Kanagawa, Japan'
@user.about = 'Hello, I am Ryo. I am from database!'
@user.save

@user = User.new
@user.name = 'Shohei Aoki'
@user.username = 'moyahima'
@user.location = 'Tottori, Japan'
@user.about = 'Nice to meet you. I am from database!'
@user.save
