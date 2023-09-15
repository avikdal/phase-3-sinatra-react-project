class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/categories" do
    categories = Category.all 
    categories.to_json(include: :tasks)
  end

  get "/categories/:id" do
    category = Category.find(params[:id])
    category.to_json(include: :tasks)
  end

  get "/tasks" do
    tasks = Task.all 
    tasks.to_json
  end

end
