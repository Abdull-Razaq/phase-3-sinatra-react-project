class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project! A sucess" }.to_json
  end

  get '/members' do
    @members = Member.all.to_json
  end

  get '/projects' do 
    @projects = Project.all.to_json
  end

  get '/users' do 
    @users = User.all.to_json
  end

  # add project instance
  post '/project/' do
    project = Project.create(
      name: params[:name],
      status: params[:status]
    )
    project.save()
    {
      "Message": "Successfully added a new project",
      "Status": "HTTP_Status_OK"
  }.to_json()
  end

  # add user instance
  post '/user/' do
    user = User.create(
      username: params[:username],
      password: params[:password]
    )
    user.save()
    {
      "Message": "Successfully added a new user",
      "Status": "HTTP_Status_OK"
  }.to_json()
  end

  # update a project
  patch '/project/update/:id' do
    project = Project.find_by(id: params[:id])

    project.update(
      name: params[:name],
      status: params[:status]
    )

    project.to_json
  end

  # update a user
  patch '/user/update/:id' do
    user = User.find_by(id: params[:id])

    user.update(
      username: params[:username],
      password: params[:password]
    )

    user.to_json
  end

  # delete a project
  delete '/project/:id' do
    project = Project.find_by(id: params[:id])
    project.destroy
    {
      "Message": "Successfully deleted project #{params[:id]}",
      "Status": "HTTP_Status_OK"
  }.to_json()
  end

  # delete a user
  delete '/user/:id' do
    user = User.find_by(id: params[:id])
    user.destroy
    {
      "Message": "Successfully deleted user #{params[:id]}",
      "Status": "HTTP_Status_OK"
  }.to_json()
  end

end
