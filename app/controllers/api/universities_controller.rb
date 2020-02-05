class Api::UniversitiesController < ApplicationController

  def index
    @response = HTTP.get("http://universities.hipolabs.com/")
    # @universities = response.parse["body"]
    render "index.json.jb"
  end

end
#source http://universities.hipolabs.com/search?name=middle and more....