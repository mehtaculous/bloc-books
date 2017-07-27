require './config/application'

app = BlocWorks::Application.new
 
use Rack::ContentType
 
app.route do
  map "", "books#welcome", default: {:request_method => "GET"}
  resources :books
  resources :libraries
end
 
run(app)