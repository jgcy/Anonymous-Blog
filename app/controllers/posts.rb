# get '/posts/show' do
#   @posts = Post.all
#   erb :posts
# end
get '/posts/new' do
  @post = Post.new
  erb :'posts/new'
end


get '/posts/:id' do
  @post = Post.find(params[:id])
  erb :'posts/show'
end

post '/posts' do
  @post = Post.new(params[:post])
  if @post.save
    redirect to "/posts/#{@post.id}"
  else
    erb :"posts/new"
  end
end

put '/posts/edit' do
end

delete '/posts/delete' do
end