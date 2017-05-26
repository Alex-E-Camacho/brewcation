get '/breweries' do
  zip = params[:postalCode]
  # binding.pry
  request = URI.parse("https://api.brewerydb.com/v2/locations/?postalCode=#{zip}&key=#{ENV['BREWERY_DB_KEY']}")
  # binding.pry
  response = Net::HTTP.get_response(request)
  @results = JSON.parse(response.body)
  erb :show
end

#http://api.brewerydb.com/v2/locations/?postalCode=10001&key=7e8a8fc1ffe90b5b30c96d9be7140b7f
