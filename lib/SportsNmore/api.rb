class SportsNmore::API
    def self.get_players
        url = "https://www.balldontlie.io/api/v1/players?per_page=100"
        response = HTTParty.get(url)
                response["data"].each do |p| 
                  first_name = p["first_name"]
                  last_name = p["last_name"]  
                  position = p["position"]
                  id = p["id"]
        SportsNmore::Players.new(first_name,last_name,position,id)
    end 
  end 
end 
