class Api::PexelsController < ApplicationController

def index
  @response = HTTP.get("https://api.pexels.com/v1/curated?per_page=15&page=1")

  @curated_photos = response.parse
  # this is the condensed curated list to start
  render "index.json.jb"
  
end



end
