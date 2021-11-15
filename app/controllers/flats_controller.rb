require "open-uri"

class FlatsController < ApplicationController
    before_action :set_flats
    
    def index
        # url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
        # @flats = JSON.parse(open(url).read)
        # render 'flats/index.html.erb'
    end

    def show
        # url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
        # @flats = JSON.parse(open(url).read)

        id = params[:id].to_i
        @flat = @flats.find{|flat| flat["id"] == id }
        # render 'flats/show.html.erb'
    end

    private

    def set_flats
        url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
        @flats = JSON.parse(open(url).read)
    end
end
