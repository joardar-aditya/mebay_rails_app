class AdsController < ApplicationController
    
    before_action :check_logged_in, only: [:edit, :update]


    def new 
        @ad = Ad.new
    end

    def create 
        params.permit!
        @ad = Ad.new(params[:ad])
        respond_to do |format|
            if @ad.save 
                format.html {redirect_to "/ads/success"}
                format.json {render json: Ad.create(params[:ad])}
            else
                @ad = Ad.new
                format.html {redirect_to "/ads/error"}    
                format.json {render json: @ad.errors}
            end
        end
    end

    def success
    end

    def error
    end


    def edit
        @ad = Ad.find(params[:id]) 
    end

    def update 
        @ad = Ad.find(params[:id])
        params.permit!
        @ad.update_attributes(params[:ad])
        redirect_to "/ads/#{@ad.id}"
    end 

    

    def show
        @ad = Ad.find(params[:id])
    end 

    def index 
        @ads = Ad.all
    end
    
    def delete 
        @ad = Ad.find(params[:id])
        @ad.destroy
        redirect_to "/ads"

    end
    
  
    
    def check_logged_in
        authenticate_or_request_with_http_basic("Ads") do |username, password|
            username == "yourusername" && password == "yourpassword"
        end
    end      
    

end
