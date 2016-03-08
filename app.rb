require_relative 'config/environment'


class App < Sinatra::Base
  
  get '/' do
    erb :index
  end
  
  post'/' do
    @user = {
      name: "#{params["fname"]} #{params["lname"]}",
      profile_pic_url: "#{params["picurl"]}",
      month: "#{params["month"]}",
      year: "#{params["year"]}",
      day: "#{params["day"]}",
      day_number: "#{params["day_number"]}",
      country: "#{params["country"]}",
      city: "#{params["city"]}",
      mood: "#{params["mood"]}"
      }
    erb :dashboard
  end
    
  
end