class Chitter < Sinatra::Base

  get '/users/new ' do
    @user = User.new
    erb :'users/new'
  end

  post '/users' do
    User.create(email: params[:email], password: params[:password])
    redirect to ('/')
  end
end
