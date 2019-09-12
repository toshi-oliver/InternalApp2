#サーバ上でのアプリケーションコードが設置されているディレクトリを変数に入れておく
app_path = File.expand_path('../../../', __FILE__)

#アプリケーションサーバの性能を決定する
worker_processes 2

#アプリケーションの設置されているディレクトリを指定
working_directory "#{app_path}/current"

#Unicornの起動に必要なファイルの設置場所を指定
pid "#{app_path}/shared/tmp/pids/unicorn.pid"

#ポート番号を指定
listen "#{app_path}/shared/tmp/sockets/unicorn.sock"

#エラーのログを記録するファイルを指定
stderr_path "#{app_path}/shared/log/unicorn.stderr.log"

#通常のログを記録するファイルを指定
stdout_path "#{app_path}/shared/log/unicorn.stdout.log"

#Railsアプリケーションの応答を待つ上限時間を設定
timeout 60

#以下は応用的な設定なので説明は割愛

