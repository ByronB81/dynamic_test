require('sinatra')
require('sinatra/reloader')

get('/') do
  erb(:home)
end

get('/pictures') do
  erb(:pictures)
end

get('/bio') do
  erb(:bio)
end

get('/form') do
  erb(:form)
end

get('/letter') do
  @sender = params.fetch('sender')
  @recipient = params.fetch('recipient')
  erb(:letter)
end