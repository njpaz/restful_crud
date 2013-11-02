get '/' do
  @all_notes = Note.all
  erb :index
end

post '/new' do
  Note.create(text: params[:text])
  redirect '/'
end

put '/update/:id' do
  @note = Note.find(params[:id])
  @note.update_attributes(text: params[:text])
  redirect '/'
end

delete '/delete/:id' do
  @note = Note.find(params[:id])
  @note.destroy
  redirect '/'
end