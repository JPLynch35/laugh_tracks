class LaughTracksApp < Sinatra::Base
  get '/comedians' do
    @comedians = Comedian.all
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
    end
    erb :'index'
  end
end
