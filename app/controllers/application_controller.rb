class ApplicationController < Sinatra::Base
  # set :default_content_type, 'application/json'
  
  # # Add your routes here
  # get "/" do
  #   { message: "Good luck with you" }.to_json
  # end

  #GET
  get "/baby_names" do
    names = BabyName.all
    names.to_json
  end

  # GET 
  get "/baby_names/:id" do
    name = BabyName.find(params[:id])
    game.to_json
  end

  # POST 
  post "/baby_names" do
    name = BabyName.create(
      name: params[:name],
      gender: params[:gender],
      origin: params[:origin],
      meaning: params[:meaning],
    )
    name.to_json
  end

  # DELETE
  delete "/baby_names/:id" do
    name = BabyName.find(params[:id])
    name.destroy
    review.to_json
  end

end
