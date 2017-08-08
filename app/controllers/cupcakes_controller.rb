get '/cupcakes' do
  @cupcakes = Cupcake.all
  erb :"cupcakes/index"
end

get '/cupcakes/new' do
  erb :"cupcakes/new"
end

post '/cupcakes' do
  @cupcake = Cupcake.new(params[:cupcake])

  if @cupcake.save
    redirect '/cupcakes'
  else
    @errors = @cupcake.errors.full_messages
    erb :"cupcakes/new"
  end
end

get '/cupcakes/:cupcake_id' do
  logger.info params
  @cupcake = Cupcake.find(params[:cupcake_id])
  erb :"cupcakes/show"
end





