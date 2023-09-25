class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

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

  post "/tasks" do
    category = Category.find_or_create_by(name: params[:category])
    newTask = Task.create(task: params[:description], category_id: category.id)
    puts "here is the new task #{newTask}"
    puts "heres the category id #{category.id}"
    newTask.to_json(include: :category)
  end

  post "/categories" do
    category = Category.create(name: params[:category])
    puts "here's the new category #{category}"
    category.to_json
  end

  patch "/tasks/:id" do
    task = Task.find(params[:id])
    task.update(task: params[:task])
    task.to_json
  end

  delete "/tasks/:id" do
    task = Task.find(params[:id])
    puts "here is the task to delete #{task}"
    task.destroy
    task.to_json
  end

  delete "/categories/:id" do
    category = Category.find(params[:id])
    puts "here is the category to delete #{category}"
    category.destroy
    category.to_json
  end

end
